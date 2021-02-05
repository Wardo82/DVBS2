function RTW_Sid2UrlHash() {
	this.urlHashMap = new Array();
	/* <S3>/FIR
Interpolation */
	this.urlHashMap["base_band_shaping_model:92"] = "bb_shaping.vhd:89,90,91,92,93,94,95";
	/* <S3>/FIR
Interpolation1 */
	this.urlHashMap["base_band_shaping_model:94"] = "bb_shaping.vhd:97,98,99,100,101,102,103";
	this.getUrlHash = function(sid) { return this.urlHashMap[sid];}
}
RTW_Sid2UrlHash.instance = new RTW_Sid2UrlHash();
function RTW_rtwnameSIDMap() {
	this.rtwnameHashMap = new Array();
	this.sidHashMap = new Array();
	this.rtwnameHashMap["<Root>"] = {sid: "base_band_shaping_model"};
	this.sidHashMap["base_band_shaping_model"] = {rtwname: "<Root>"};
	this.rtwnameHashMap["<S3>/inphase"] = {sid: "base_band_shaping_model:8"};
	this.sidHashMap["base_band_shaping_model:8"] = {rtwname: "<S3>/inphase"};
	this.rtwnameHashMap["<S3>/quadrature"] = {sid: "base_band_shaping_model:9"};
	this.sidHashMap["base_band_shaping_model:9"] = {rtwname: "<S3>/quadrature"};
	this.rtwnameHashMap["<S3>/FIR Interpolation"] = {sid: "base_band_shaping_model:92"};
	this.sidHashMap["base_band_shaping_model:92"] = {rtwname: "<S3>/FIR Interpolation"};
	this.rtwnameHashMap["<S3>/FIR Interpolation1"] = {sid: "base_band_shaping_model:94"};
	this.sidHashMap["base_band_shaping_model:94"] = {rtwname: "<S3>/FIR Interpolation1"};
	this.rtwnameHashMap["<S3>/i_filtered"] = {sid: "base_band_shaping_model:10"};
	this.sidHashMap["base_band_shaping_model:10"] = {rtwname: "<S3>/i_filtered"};
	this.rtwnameHashMap["<S3>/q_filtered"] = {sid: "base_band_shaping_model:57"};
	this.sidHashMap["base_band_shaping_model:57"] = {rtwname: "<S3>/q_filtered"};
	this.getSID = function(rtwname) { return this.rtwnameHashMap[rtwname];}
	this.getRtwname = function(sid) { return this.sidHashMap[sid];}
}
RTW_rtwnameSIDMap.instance = new RTW_rtwnameSIDMap();
