package com.ingsw.ratatouille23.client.View.Dialog;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ColorDrawable;
import android.graphics.pdf.PdfDocument;
import android.os.Bundle;
import android.os.Environment;
import android.view.Gravity;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AppCompatDialogFragment;
import androidx.appcompat.widget.AppCompatButton;

import com.google.zxing.BarcodeFormat;
import com.google.zxing.WriterException;
import com.google.zxing.common.BitMatrix;
import com.google.zxing.qrcode.QRCodeWriter;
import com.ingsw.ratatouille23.client.R;

import com.ingsw.ratatouille23.client.Retrofit.RetrofitService;
import com.ingsw.ratatouille23.client.View.Activity.HomeActivity;

import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

public class QRCODE_Dialog extends AppCompatDialogFragment {

    HomeActivity home;

    ImageView qrcode;

    AppCompatButton printQrCode;

    public QRCODE_Dialog(HomeActivity home){
        this.home = home;
    }

    @NonNull
    @Override
    public Dialog onCreateDialog(@Nullable Bundle savedInstanceState) {
        LayoutInflater inflater = getActivity().getLayoutInflater();
        View v = inflater.inflate(R.layout.dialog_qrcode, null);

        qrcode = v.findViewById(R.id.qrcodeImage);
        printQrCode = v.findViewById(R.id.printQrCode);

        Integer menu = ((HomeActivity)getActivity()).getRistorante().getIdMenu();

        generateQrCode(RetrofitService.getBaseUrl() + "/web/qrcode?id=" + menu);

        printQrCode.setOnClickListener(new View.OnClickListener() {
            @Override
            public void onClick(View view) {

                BitmapDrawable drawable = (BitmapDrawable) qrcode.getDrawable();
                Bitmap bitmap = drawable.getBitmap();

                PdfDocument pdfDocument = new PdfDocument();
                PdfDocument.PageInfo pageInfo = new PdfDocument.PageInfo.Builder(bitmap.getWidth() + 100, bitmap.getHeight() + 100,1).create();

                PdfDocument.Page page = pdfDocument.startPage(pageInfo);

                Canvas canvas = page.getCanvas();
                Paint paint = new Paint();
                paint.setColor(Color.RED);
                paint.setTextSize(48);
                canvas.drawText(((HomeActivity)getActivity()).getRistorante().getNome().toUpperCase(), (canvas.getWidth()/2) - 50, 100 , paint);

                bitmap = Bitmap.createScaledBitmap(bitmap, bitmap.getWidth(), bitmap.getHeight(), true);
                canvas.drawBitmap(bitmap, 50, 100, paint);
                pdfDocument.finishPage(page);

                String folder = "IngswPdfQrcode";

                File root = new File(Environment.getExternalStorageDirectory(), folder);

                if(!root.exists()){
                    root.mkdirs();
                }

                File file = new File(root, "qrcode.pdf");
                try {
                    FileOutputStream fileOutputStream = new FileOutputStream(file);
                    pdfDocument.writeTo(fileOutputStream);
                } catch (IOException e){
                    e.printStackTrace();
                }

                pdfDocument.close();
            }
        });



        AlertDialog dialog = new AlertDialog.Builder(getActivity())
                .setView(v)
                .show();

        return dialog;
    }

    public void generateQrCode(String url){
        QRCodeWriter writer = new QRCodeWriter();
        try {
            BitMatrix bitMatrix = writer.encode(url, BarcodeFormat.QR_CODE, 512, 512);
            int width = bitMatrix.getWidth();
            int height = bitMatrix.getHeight();
            Bitmap bmp = Bitmap.createBitmap(width, height, Bitmap.Config.RGB_565);
            for (int x = 0; x < width; x++) {
                for (int y = 0; y < height; y++) {
                    bmp.setPixel(x, y, bitMatrix.get(x, y) ? Color.BLACK : Color.WHITE);
                }
            }
            qrcode.setImageBitmap(bmp);

        } catch (WriterException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void onStart() {
        super.onStart();
        getDialog().getWindow().getAttributes().width=1270;
        getDialog().getWindow().getAttributes().height=1270;
        getDialog().getWindow().setBackgroundDrawable(new ColorDrawable(Color.TRANSPARENT));
        getDialog().getWindow().setAttributes(
                getDialog().getWindow().getAttributes());
    }

}
