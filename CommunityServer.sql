/*
 Navicat MongoDB Data Transfer

 Source Server         : MongoDB
 Source Server Type    : MongoDB
 Source Server Version : 40405
 Source Host           : localhost:27017
 Source Schema         : CommunityServer

 Target Server Type    : MongoDB
 Target Server Version : 40405
 File Encoding         : 65001

 Date: 20/04/2021 15:24:47
*/


// ----------------------------
// Collection structure for administrator
// ----------------------------
db.getCollection("administrator").drop();
db.createCollection("administrator");

// ----------------------------
// Documents of administrator
// ----------------------------
db.getCollection("administrator").insert([ {
    _id: ObjectId("607e33c0b0370000f1004439"),
    adName: "易烊",
    adId: 110001,
    password: 12333,
    department: "财政部",
    postion: "部长"
} ]);
db.getCollection("administrator").insert([ {
    _id: ObjectId("607e33c0b0370000f100443a"),
    adName: "网元",
    adId: 110001,
    password: 12333,
    department: "后勤部",
    postion: "职员"
} ]);
db.getCollection("administrator").insert([ {
    _id: ObjectId("607e33c0b0370000f100443b"),
    adName: "王一",
    adId: 110003,
    password: 12333,
    department: "管理部",
    postion: "职员"
} ]);

// ----------------------------
// Collection structure for complain
// ----------------------------
db.getCollection("complain").drop();
db.createCollection("complain");

// ----------------------------
// Documents of complain
// ----------------------------
db.getCollection("complain").insert([ {
    _id: ObjectId("607e7c66b0370000f100444d"),
    UesrName: "张三",
    ServerName: "王五",
    orderID: 10001,
    service: "水电维修",
    Content: "服务态度不好",
    administrator: "易烊",
    Time: "2021/12/21"
} ]);
db.getCollection("complain").insert([ {
    _id: ObjectId("607e7c66b0370000f100444e"),
    UesrName: "张三",
    ServerName: "沈六",
    orderID: 10002,
    service: "家教",
    Content: "教课不认真",
    administrator: "王一",
    Time: "2021/12/22"
} ]);
db.getCollection("complain").insert([ {
    _id: ObjectId("607e7c66b0370000f100444f"),
    UesrName: "张三",
    ServerName: "小小",
    orderID: 10003,
    service: "家教",
    Content: "打骂孩子",
    administrator: "易烊",
    Time: "2021/12/23"
} ]);

// ----------------------------
// Collection structure for order
// ----------------------------
db.getCollection("order").drop();
db.createCollection("order");

// ----------------------------
// Documents of order
// ----------------------------
db.getCollection("order").insert([ {
    _id: ObjectId("607e31d1b0370000f1004437"),
    orderID: 10001,
    serverName: "王五",
    serverID: 10001,
    userName: "张三",
    service: "水电维修",
    Price: "100元",
    Time: "2021/2/20"
} ]);
db.getCollection("order").insert([ {
    _id: ObjectId("607e31d1b0370000f1004438"),
    orderID: 10002,
    serverName: "沈六",
    serverID: 10003,
    userName: "张三",
    service: "家教",
    Price: "200元",
    Time: "2021/3/20"
} ]);

// ----------------------------
// Collection structure for platform
// ----------------------------
db.getCollection("platform").drop();
db.createCollection("platform");

// ----------------------------
// Documents of platform
// ----------------------------
db.getCollection("platform").insert([ {
    _id: ObjectId("607e7827b0370000f1004443"),
    serveLocation: "幸福小区社区服务站",
    MainAdministrator: "易烊",
    dealedOrder: 1999,
    complainNumber: 100
} ]);
db.getCollection("platform").insert([ {
    _id: ObjectId("607e7827b0370000f1004444"),
    serveLocation: "宝贝小区社区服务站",
    MainAdministrator: "网元",
    dealedOrder: 2000,
    complainNumber: 90
} ]);
db.getCollection("platform").insert([ {
    _id: ObjectId("607e7827b0370000f1004445"),
    serveLocation: "星星小区社区服务站",
    MainAdministrator: "王一",
    dealedOrder: 1480,
    complainNumber: 300
} ]);
db.getCollection("platform").insert([ {
    _id: ObjectId("607e7827b0370000f1004446"),
    serveLocation: "美丽小区社区服务站",
    MainAdministrator: "张张",
    dealedOrder: 2999,
    complainNumber: 150
} ]);

// ----------------------------
// Collection structure for serveLocation
// ----------------------------
db.getCollection("serveLocation").drop();
db.createCollection("serveLocation");

// ----------------------------
// Documents of serveLocation
// ----------------------------
db.getCollection("serveLocation").insert([ {
    _id: ObjectId("607e3821b0370000f1004441"),
    localID: 10001,
    location: "幸福小区社区服务站",
    Number: 200,
    administrator: 20,
    server: 180
} ]);
db.getCollection("serveLocation").insert([ {
    _id: ObjectId("607e3821b0370000f1004442"),
    localID: 10002,
    location: "宝贝小区社区服务站",
    Number: 100,
    administrator: 20,
    server: 80
} ]);

// ----------------------------
// Collection structure for server
// ----------------------------
db.getCollection("server").drop();
db.createCollection("server");

// ----------------------------
// Documents of server
// ----------------------------
db.getCollection("server").insert([ {
    _id: ObjectId("607e2f8cb0370000f1004434"),
    id: 10001,
    serverName: "王五",
    password: 11111,
    TelephoneNumber: 123345,
    Style: "水电维修"
} ]);
db.getCollection("server").insert([ {
    _id: ObjectId("607e2f8cb0370000f1004435"),
    id: 10002,
    serverName: "张章",
    password: 11111,
    TelephoneNumber: 123345,
    Style: "家教"
} ]);
db.getCollection("server").insert([ {
    _id: ObjectId("607e2f8cb0370000f1004436"),
    id: 10003,
    serverName: "沈六",
    password: 11111,
    TelephoneNumber: 123345,
    Style: "配送"
} ]);

// ----------------------------
// Collection structure for service
// ----------------------------
db.getCollection("service").drop();
db.createCollection("service");

// ----------------------------
// Documents of service
// ----------------------------
db.getCollection("service").insert([ {
    _id: ObjectId("607e3677b0370000f100443c"),
    serviceID: 1,
    style: "水电维修",
    Number: 120,
    onlineNumber: 40
} ]);
db.getCollection("service").insert([ {
    _id: ObjectId("607e3677b0370000f100443d"),
    serviceID: 2,
    style: "家政",
    Number: 200,
    onlineNumber: 50
} ]);
db.getCollection("service").insert([ {
    _id: ObjectId("607e3677b0370000f100443e"),
    serviceID: 3,
    style: "配送",
    Number: 220,
    onlineNumber: 100
} ]);
db.getCollection("service").insert([ {
    _id: ObjectId("607e3677b0370000f100443f"),
    serviceID: 4,
    style: "老人陪护",
    Number: 90,
    onlineNumber: 30
} ]);
db.getCollection("service").insert([ {
    _id: ObjectId("607e3677b0370000f1004440"),
    serviceID: 5,
    style: "社区医疗",
    Number: 125,
    onlineNumber: 40
} ]);

// ----------------------------
// Collection structure for serviceEvaluation
// ----------------------------
db.getCollection("serviceEvaluation").drop();
db.createCollection("serviceEvaluation");

// ----------------------------
// Documents of serviceEvaluation
// ----------------------------
db.getCollection("serviceEvaluation").insert([ {
    _id: ObjectId("607e7ea1b0370000f1004450"),
    orderID: 10001,
    UesrName: "张三",
    ServerName: "王五",
    serverID: 10001,
    service: "水电维修",
    Content: "师傅服务热情",
    serveLocation: "幸福小区社区服务站",
    Time: "2021/2/21"
} ]);
db.getCollection("serviceEvaluation").insert([ {
    _id: ObjectId("607e7ea1b0370000f1004451"),
    orderID: 10002,
    UesrName: "李四",
    ServerName: "张章",
    serverID: 10004,
    service: "家教",
    Content: "教课认真，孩子学习进步大",
    serveLocation: "星星小区社区服务站",
    Time: "2021/2/22"
} ]);
db.getCollection("serviceEvaluation").insert([ {
    _id: ObjectId("607e7ea1b0370000f1004452"),
    orderID: 10003,
    UesrName: "丽丽",
    ServerName: "小小",
    serverID: 10006,
    service: "社区医疗",
    Content: "医疗水平高",
    serveLocation: "宝贝小区社区服务站",
    Time: "2021/2/23"
} ]);

// ----------------------------
// Collection structure for system.views
// ----------------------------
db.getCollection("system.views").drop();
db.createCollection("system.views");

// ----------------------------
// Documents of system.views
// ----------------------------
db.getCollection("system.views").insert([ {
    _id: "CommunityServer.adminstrator-view",
    viewOn: "administrator",
    pipeline: [ ]
} ]);

// ----------------------------
// Collection structure for user
// ----------------------------
db.getCollection("user").drop();
db.createCollection("user");

// ----------------------------
// Documents of user
// ----------------------------
db.getCollection("user").insert([ {
    _id: ObjectId("607e2cdbb0370000f1004431"),
    Username: "张三",
    passward: "123456",
    UserStyle: "男",
    Address: "幸福小区101",
    TelephoneNummber: 1234
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("607e2cdbb0370000f1004432"),
    Username: "李四",
    passward: "123456",
    UserStyle: "男",
    Address: "幸福小区102",
    TelephoneNummber: 1234
} ]);
db.getCollection("user").insert([ {
    _id: ObjectId("607e2cdbb0370000f1004433"),
    Username: "丽丽",
    passward: "123456",
    UserStyle: "女",
    Address: "幸福小区103",
    TelephoneNummber: 1234
} ]);

// ----------------------------
// View structure for adminstrator-view
// ----------------------------
db.getCollection("adminstrator-view").drop();
db.createView("adminstrator-view","administrator",[ ]);
