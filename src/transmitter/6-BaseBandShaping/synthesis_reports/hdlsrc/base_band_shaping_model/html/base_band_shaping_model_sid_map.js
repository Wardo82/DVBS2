function RTW_SidParentMap() {
    this.sidParentMap = new Array();
    this.sidParentMap["base_band_shaping_model:8"] = "base_band_shaping_model:7";
    this.sidParentMap["base_band_shaping_model:9"] = "base_band_shaping_model:7";
    this.sidParentMap["base_band_shaping_model:92"] = "base_band_shaping_model:7";
    this.sidParentMap["base_band_shaping_model:94"] = "base_band_shaping_model:7";
    this.sidParentMap["base_band_shaping_model:10"] = "base_band_shaping_model:7";
    this.sidParentMap["base_band_shaping_model:57"] = "base_band_shaping_model:7";
    this.getParentSid = function(sid) { return this.sidParentMap[sid];}
}
    RTW_SidParentMap.instance = new RTW_SidParentMap();
