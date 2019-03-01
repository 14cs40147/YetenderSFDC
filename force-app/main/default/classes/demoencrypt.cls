public with sharing class demoencrypt {

    Blob key;

    public demoencrypt() {
        key = Crypto.generateAesKey(128);
    }

    public PageReference translate() {
        if(mode=='encrypt') {
            result = EncodingUtil.base64Encode(Crypto.encryptwithmanagediv('AES128',key,blob.valueof(source)));
        }
        if(mode=='decrypt') {
            result = Crypto.decryptwithmanagediv('AES128',key,EncodingUtil.base64decode(source)).tostring();
        }
        return null;
    }


    public String result { get; set; }

    public String source { get; set; }

    public String mode { get; set; }
}