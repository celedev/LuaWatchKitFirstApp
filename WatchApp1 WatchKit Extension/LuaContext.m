//
//  LuaContext.m
//  WatchApp1
//
//  Created by Jean-Luc on 20/11/2014.
//  Copyright (c) 2014 Celedev. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CIMLua/CIMLua.h"
#import "CIMLua/CIMLuaContextMonitor.h"

#import <WatchKit/WatchKit.h>

CIMLuaContext* _luaContext = nil;
static CIMLuaContextMonitor* _luaContextMonitor = nil;

static void startLuaContext() __attribute__((constructor));

static void startLuaContext()
{
    _luaContext = [[CIMLuaContext alloc] initWithName:@"Watch Extension" mainSourcePackageId:@"WatchApp"];
    _luaContextMonitor = [[CIMLuaContextMonitor alloc] initWithLuaContext:_luaContext connectionTimeout:10];
    
    [_luaContext loadLuaModuleNamed:@"InterfaceControllers"];
}