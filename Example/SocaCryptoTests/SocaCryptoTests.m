//
//  SocaCryptoTests.m
//  SocaCryptoTests
//
//  Created by Zhuhao Wang on 4/9/15.
//  Copyright (c) 2015 Zhuhao Wang. All rights reserved.
//

#import <Specta/Specta.h>
#import <Expecta/Expecta.h>
#import <SocaCrypto/SocaCrypto.h>
#import <CommonCrypto/CommonCrypto.h>

SpecBegin(SOCADigest)

describe(@"MD5", ^{
    it(@"should hash data", ^{
        NSData *data = [[NSData alloc] initWithBytes:(Byte []){0x41, 0x42, 0x43} length:3];
        NSData *result = [SOCADigest MD5ByData:data];
        Byte ans[] = {0x90, 0x2F, 0xBD, 0xD2, 0xB1, 0xDF, 0x0C, 0x4F, 0x70, 0xB4, 0xA5, 0xD2, 0x35, 0x25, 0xE9, 0x32};
        NSData *answer = [[NSData alloc] initWithBytes:ans length:16];
        expect([result isEqualToData:answer]).to.beTruthy();
    });
    
    it(@"should hash string", ^{
        NSString *string = @"ABC";
        NSData *result = [SOCADigest MD5ByString:string];
        Byte ans[] = {0x90, 0x2F, 0xBD, 0xD2, 0xB1, 0xDF, 0x0C, 0x4F, 0x70, 0xB4, 0xA5, 0xD2, 0x35, 0x25, 0xE9, 0x32};
        NSData *answer = [[NSData alloc] initWithBytes:ans length:16];
        expect([result isEqualToData:answer]).to.beTruthy();
    });
});

SpecEnd