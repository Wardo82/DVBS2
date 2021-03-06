function RTW_SidParentMap() {
    this.sidParentMap = new Array();
    this.sidParentMap["bch_encoder_model:8"] = "bch_encoder_model:7";
    this.sidParentMap["bch_encoder_model:56"] = "bch_encoder_model:7";
    this.sidParentMap["bch_encoder_model:49"] = "bch_encoder_model:7";
    this.sidParentMap["bch_encoder_model:45"] = "bch_encoder_model:7";
    this.sidParentMap["bch_encoder_model:40"] = "bch_encoder_model:7";
    this.sidParentMap["bch_encoder_model:39"] = "bch_encoder_model:7";
    this.sidParentMap["bch_encoder_model:32"] = "bch_encoder_model:7";
    this.sidParentMap["bch_encoder_model:55"] = "bch_encoder_model:7";
    this.sidParentMap["bch_encoder_model:33"] = "bch_encoder_model:7";
    this.sidParentMap["bch_encoder_model:42"] = "bch_encoder_model:7";
    this.sidParentMap["bch_encoder_model:10"] = "bch_encoder_model:7";
    this.sidParentMap["bch_encoder_model:57"] = "bch_encoder_model:7";
    this.sidParentMap["bch_encoder_model:32:1"] = "bch_encoder_model:32";
    this.sidParentMap["bch_encoder_model:32:1:5"] = "bch_encoder_model:32";
    this.sidParentMap["bch_encoder_model:32:1:7"] = "bch_encoder_model:32";
    this.sidParentMap["bch_encoder_model:55:1"] = "bch_encoder_model:55";
    this.sidParentMap["bch_encoder_model:55:1:18"] = "bch_encoder_model:55";
    this.sidParentMap["bch_encoder_model:55:1:19"] = "bch_encoder_model:55";
    this.sidParentMap["bch_encoder_model:55:1:24"] = "bch_encoder_model:55";
    this.sidParentMap["bch_encoder_model:55:1:25"] = "bch_encoder_model:55";
    this.sidParentMap["bch_encoder_model:55:1:26"] = "bch_encoder_model:55";
    this.sidParentMap["bch_encoder_model:55:1:27"] = "bch_encoder_model:55";
    this.sidParentMap["bch_encoder_model:55:1:28"] = "bch_encoder_model:55";
    this.sidParentMap["bch_encoder_model:55:1:29"] = "bch_encoder_model:55";
    this.sidParentMap["bch_encoder_model:55:1:30"] = "bch_encoder_model:55";
    this.sidParentMap["bch_encoder_model:55:1:31"] = "bch_encoder_model:55";
    this.sidParentMap["bch_encoder_model:55:1:34"] = "bch_encoder_model:55";
    this.sidParentMap["bch_encoder_model:55:1:35"] = "bch_encoder_model:55";
    this.sidParentMap["bch_encoder_model:55:1:36"] = "bch_encoder_model:55";
    this.sidParentMap["bch_encoder_model:55:1:37"] = "bch_encoder_model:55";
    this.sidParentMap["bch_encoder_model:55:1:38"] = "bch_encoder_model:55";
    this.sidParentMap["bch_encoder_model:55:1:39"] = "bch_encoder_model:55";
    this.sidParentMap["bch_encoder_model:55:1:42"] = "bch_encoder_model:55";
    this.sidParentMap["bch_encoder_model:55:1:43"] = "bch_encoder_model:55";
    this.sidParentMap["bch_encoder_model:33:1"] = "bch_encoder_model:33";
    this.sidParentMap["bch_encoder_model:33:1:5"] = "bch_encoder_model:33";
    this.sidParentMap["bch_encoder_model:33:1:8"] = "bch_encoder_model:33";
    this.sidParentMap["bch_encoder_model:33:1:10"] = "bch_encoder_model:33";
    this.sidParentMap["bch_encoder_model:33:1:11"] = "bch_encoder_model:33";
    this.sidParentMap["bch_encoder_model:42:1"] = "bch_encoder_model:42";
    this.sidParentMap["bch_encoder_model:42:1:3"] = "bch_encoder_model:42";
    this.sidParentMap["bch_encoder_model:42:1:4"] = "bch_encoder_model:42";
    this.getParentSid = function(sid) { return this.sidParentMap[sid];}
}
    RTW_SidParentMap.instance = new RTW_SidParentMap();
