package com.ingsw.ratatouille23.client.Service;

public interface Callback {
    void returnResult(Object o);
    void returnError(Throwable e);
}
