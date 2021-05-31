/*
* MIT License
*
* Copyright (c) 2020-2021 EntySec
*
* Permission is hereby granted, free of charge, to any person obtaining a copy
* of this software and associated documentation files (the "Software"), to deal
* in the Software without restriction, including without limitation the rights
* to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
* copies of the Software, and to permit persons to whom the Software is
* furnished to do so, subject to the following conditions:
*
* The above copyright notice and this permission notice shall be included in all
* copies or substantial portions of the Software.
*
* THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
* IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
* FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
* AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
* LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
* OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
* SOFTWARE.
*/

#import "console.h"

@implementation Console

-(void)console_log:(NSString *)message {
    printf("%s", [message UTF8String]);
    fflush(stdout);
}

-(void)console_log_error:(NSString *)message {
    message = [NSString stringWithFormat:@"[-] %@", message];
    [self console_log:message];
}

-(void)console_log_process:(NSString *)message {
    message = [NSString stringWithFormat:@"[*] %@", message];
    [self console_log:message];
}

-(void)console_log_success:(NSString *)message {
    message = [NSString stringWithFormat:@"[+] %@", message];
    [self console_log:message];
}

-(void)console_log_warning:(NSString *)message {
    message = [NSString stringWithFormat:@"[!] %@", message];
    [self console_log:message];
}

-(void)console_log_information:(NSString *)message {
    message = [NSString stringWithFormat:@"[i] %@", message];
    [self console_log:message];
}

@end
