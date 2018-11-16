#import <Foundation/Foundation.h>
#include <nan.h>

void Method2(const Nan::FunctionCallbackInfo<v8::Value>& info) {
    NSString *interfaceStyle = [[NSUserDefaults standardUserDefaults] stringForKey:@"AppleInterfaceStyle"];
    info.GetReturnValue().Set(Nan::New([interfaceStyle UTF8String]).ToLocalChecked());
}

void Init(v8::Local<v8::Object> exports) {
  exports->Set(Nan::New("getInterfaceStyle").ToLocalChecked(),
               Nan::New<v8::FunctionTemplate>(Method2)->GetFunction());
}

NODE_MODULE(getInterfaceStyle, Init)