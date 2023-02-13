package com.ingsw.server.ratatouille23.Utils;

import com.fasterxml.jackson.annotation.JsonProperty;

public enum Ruolo {
    @JsonProperty("admin")
    admin,
    @JsonProperty("supervisore")
    supervisore,
    @JsonProperty("cuoco")
    cuoco,
    @JsonProperty("cameriere")
    cameriere
}
