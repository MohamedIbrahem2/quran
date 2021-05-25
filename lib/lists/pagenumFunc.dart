
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:quran/lists/listOfParts.dart';

getHezpNum(int numOfPage){
  switch (numOfPage) {
            case 1:
                toast_show("بدايه الحزب 1 الجزء" + listOfParts[0]);
                break;
            case 5:
                toast_show("ربع الحزب 1 الجزء" + listOfParts[0]);
                break;

            case 7:
                toast_show("نصف الحزب 1 الجزء" + listOfParts[0]);
                break;
            case 9:
                toast_show("ثلاثه ارباع الحزب 1 الجزء" + listOfParts[0]);
                break;
            case 11:
                toast_show( "بدايه الحزب2  الجزء "+ listOfParts[0]);
                break;
            case 14:
                toast_show("ربع الحزب2 الجزء" + listOfParts[0]);
                break;
            case 17:
                toast_show("نصف الحزب 2 الجزء" + listOfParts[0]);

                break;
            case 19:
                toast_show("ثلاثه ارباع الحزب 2  الجزء" + listOfParts[0]);
                break;
            case 22:
                toast_show("بدايه الحزب 3 الجزء" + listOfParts[1]);
                break;
            case 24:
                toast_show("ربع الحزب 3 الجزء" + listOfParts[1]);
                break;
            case 27:
                toast_show("نصف الحزب 3 الجزء" + listOfParts[1]);
                break;
            case 29:
                toast_show("ثلاثه ارباع الحزب 3 الجزء" + listOfParts[1]);
                break;
            case 32:
                toast_show("بدايه الحزب 4 الجزء" + listOfParts[1]);
                break;
            case 34:
                toast_show("ربع الحزب 4 الجزء" + listOfParts[1]);
                break;
            case 37:
                toast_show("نصف الحزب 4 الجزء" + listOfParts[1]);
                break;
            case 39:
                toast_show("ثلاثه ارباع الحزب 4 الجزء" + listOfParts[1]);
                break;
            case 42:
                toast_show("بدايه الحزب 5 الجزء" + listOfParts[2]);
                break;
            case 44:
                toast_show("ربع الحزب 5 الجزء" + listOfParts[2]);
                break;
            case 46:
                toast_show("نصف الحزب 5 الجزء" + listOfParts[2]);
                break;
            case 49:
                toast_show("ثلاثه ارباع الحزب 5 الجزء" + listOfParts[2]);
                break;
            case 51:
                toast_show("بدايه الحزب 6 الجزء" + listOfParts[2]);
                break;
            case 54:
                toast_show("ربع الحزب 6 الجزء" + listOfParts[2]);
                break;
            case 56:
                toast_show("نصف الحزب 6 الجزء" + listOfParts[2]);
                break;
            case 59:
                toast_show("ثلاثه ارباع الحزب 6 الجزء" + listOfParts[2]);
                break;
            case 62:
                toast_show("بدايه الحزب 7 الجزء" + listOfParts[3]);
                break;
            case 64:
                toast_show("ربع الحزب 7 الجزء" + listOfParts[3]);
                break;
            case 67:
                toast_show("نصف الحزب 7 الجزء" + listOfParts[3]);
                break;
            case 69:
                toast_show("ثلاثه ارباع الحزب 7 الجزء" + listOfParts[3]);
                break;
            case 72:
                toast_show("بدايه الحزب 8 الجزء" + listOfParts[3]);
                break;
            case 74:
                toast_show("ربع الحزب 8 الجزء" + listOfParts[3]);
                break;
            case 77:
                toast_show("نصف الحزب 8 الجزء" + listOfParts[3]);
                break;
            case 79:
                toast_show("ثلاثه ارباع الحزب 8 الجزء" + listOfParts[3]);
                break;
            case 82:
                toast_show("بدايه الحزب 9 الجزء" + listOfParts[4]);
                break;
            case 84:
                toast_show("ربع الحزب 9 الجزء" + listOfParts[4]);
                break;
            case 87:
                toast_show("نصف الحزب 9 الجزء" + listOfParts[4]);
                break;
            case 89:
                toast_show("ثلاثه ارباع الحزب 9 الجزء" + listOfParts[4]);
                break;
            case 92:
                toast_show("بدايه الحزب 10 الجزء" + listOfParts[4]);
                break;
            case 94:
                toast_show("ربع الحزب 10 الجزء" + listOfParts[4]);
                break;
            case 97:
                toast_show("نصف الحزب 10 الجزء" + listOfParts[4]);
                break;
            case 100:
                toast_show("ثلاثه ارباع الحزب 10 الجزء" + listOfParts[4]);
                break;
            case 102:
                toast_show("بدايه الحزب 11 الجزء" + listOfParts[5]);
                break;
            case 104:
                toast_show("ربع الحزب 11 الجزء" + listOfParts[5]);
                break;
            case 106:
                toast_show("نصف الحزب 11 الجزء" + listOfParts[5]);
                break;
            case 109:
                toast_show("ثلاثه ارباع الحزب 11 الجزء" + listOfParts[5]);
                break;
            case 112:
                toast_show("بدايه الحزب 12 الجزء" + listOfParts[5]);
                break;
            case 114:
                toast_show("ربع الحزب 12 الجزء" + listOfParts[5]);
                break;
            case 117:
                toast_show("نصف الحزب 12 الجزء" + listOfParts[5]);
                break;
            case 119:
                toast_show("ثلاثه ارباع الحزب 12 الجزء" + listOfParts[5]);
                break;
            case 121:
                toast_show("بدايه الحزب 13 الجزء" + listOfParts[6]);
                break;
            case 124:
                toast_show("ربع الحزب 13 الجزء" + listOfParts[6]);
                break;
            case 126:
                toast_show("نصف الحزب 13 الجزء" + listOfParts[6]);
                break;
            case 129:
                toast_show("ثلاثه ارباع الحزب 13 الجزء" + listOfParts[6]);
                break;
            case 132:
                toast_show("بدايه الحزب 14 الجزء" + listOfParts[6]);
                break;
            case 134:
                toast_show("ربع الحزب 14 الجزء" + listOfParts[6]);
                break;
            case 137:
                toast_show("نصف الحزب 14 الجزء" + listOfParts[6]);
                break;
            case 140:
                toast_show("ثلاثه ارباع الحزب 14 الجزء" + listOfParts[6]);
                break;
            case 142:
                toast_show("بدايه الحزب 15 الجزء" + listOfParts[7]);
                break;
            case 144:
                toast_show("ربع الحزب 15 الجزء" + listOfParts[7]);
                break;
            case 146:
                toast_show("نصف الحزب 15 الجزء" + listOfParts[7]);
                break;
            case 148:
                toast_show("ثلاثه ارباع الحزب 15 الجزء" + listOfParts[7]);
                break;
            case 151:
                toast_show("بدايه الحزب 16 الجزء" + listOfParts[7]);
                break;
            case 154:
                toast_show("ربع الحزب 16 الجزء" + listOfParts[7]);
                break;
            case 156:
                toast_show("نصف الحزب 16 الجزء" + listOfParts[7]);
                break;
            case 158:
                toast_show("ثلاثه ارباع الحزب 16 الجزء" + listOfParts[7]);
                break;
            case 162:
                toast_show("بدايه الحزب 17 الجزء" + listOfParts[8]);
                break;
            case 164:
                toast_show("ربع الحزب 17 الجزء" + listOfParts[8]);
                break;
            case 167:
                toast_show("نصف الحزب 17 الجزء" + listOfParts[8]);
                break;
            case 170:
                toast_show("ثلاثه ارباع الحزب 17 الجزء" + listOfParts[8]);
                break;
            case 173:
                toast_show("بدايه الحزب 17 الجزء" + listOfParts[8]);
                break;
            case 175:
                toast_show("ربع الحزب 18 الجزء" + listOfParts[8]);
                break;
            case 177:
                toast_show("نصف الحزب 18 الجزء" + listOfParts[8]);
                break;
            case 179:
                toast_show("ثلاثه ارباع الحزب 18 الجزء" + listOfParts[8]);
                break;
            case 182:
                toast_show("بدايه الحزب 19 الجزء" + listOfParts[9]);
                break;
            case 184:
                toast_show("ربع الحزب 19 الجزء" + listOfParts[9]);
                break;
            case 187:
                toast_show("نصف الحزب 19 الجزء" + listOfParts[9]);
                break;
            case 189:
                toast_show("ثلاثه ارباع الحزب 19 الجزء" + listOfParts[9]);
                break;
            case 192:
                toast_show("بدايه الحزب 20 الجزء" + listOfParts[9]);
                break;
            case 194:
                toast_show("ربع الحزب 20 الجزء" + listOfParts[9]);
                break;
            case 196:
                toast_show("نصف الحزب 20 الجزء" + listOfParts[9]);
                break;
            case 199:
                toast_show("ثلاثه ارباع الحزب 20 الجزء" + listOfParts[9]);
                break;
            case 201:
                toast_show("بدايه الحزب 21 الجزء" + listOfParts[10]);
                break;
            case 204:
                toast_show("ربع الحزب 21 الجزء" + listOfParts[10]);
                break;
            case 206:
                toast_show("نصف الحزب 21 الجزء" + listOfParts[10]);
                break;
            case 209:
                toast_show("ثلاثه ارباع الحزب 21 الجزء" + listOfParts[10]);
                break;
            case 212:
                toast_show("بدايه الحزب 22 الجزء" + listOfParts[10]);
                break;
            case 214:
                toast_show("ربع الحزب 22 الجزء" + listOfParts[10]);
                break;
            case 217:
                toast_show("نصف الحزب 22 الجزء" + listOfParts[10]);
                break;
            case 219:
                toast_show("ثلاثه ارباع الحزب 22 الجزء" + listOfParts[10]);
                break;
            case 222:
                toast_show("بدايه الحزب 23 الجزء" + listOfParts[11]);
                break;
            case 224:
                toast_show("ربع الحزب 23 الجزء" + listOfParts[11]);
                break;
            case 226:
                toast_show("نصف الحزب 23 الجزء" + listOfParts[11]);
                break;
            case 228:
                toast_show("ثلاثه ارباع الحزب 23 الجزء" + listOfParts[11]);
                break;
            case 231:
                toast_show("بدايه الحزب 24 الجزء" + listOfParts[11]);
                break;
            case 233:
                toast_show("ربع الحزب 24 الجزء" + listOfParts[11]);
                break;
            case 236:
                toast_show("نصف الحزب 24 الجزء" + listOfParts[11]);
                break;
            case 238:
                toast_show("ثلاثه ارباع الحزب 24 الجزء" + listOfParts[11]);
                break;
            case 242:
                toast_show("بدايه الحزب 25 الجزء" + listOfParts[12]);
                break;
            case 244:
                toast_show("ربع الحزب 25 الجزء" + listOfParts[12]);
                break;
            case 247:
                toast_show("نصف الحزب 25 الجزء" + listOfParts[12]);
                break;
            case 249:
                toast_show("ثلاثه ارباع الحزب 25 الجزء" + listOfParts[12]);
                break;
            case 252:
                toast_show("بدايه الحزب 26 الجزء" + listOfParts[12]);
                break;
            case 254:
                toast_show("ربع الحزب 26 الجزء" + listOfParts[12]);
                break;
            case 256:
                toast_show("نصف الحزب 26 الجزء" + listOfParts[12]);
                break;
            case 259:
                toast_show("ثلاثه ارباع الحزب 26 الجزء" + listOfParts[12]);
                break;
            case 262:
                toast_show("بدايه الحزب 27 الجزء" + listOfParts[13]);
                break;
            case 264:
                toast_show("ربع الحزب 27 الجزء" + listOfParts[13]);
                break;
            case 267:
                toast_show("نصف الحزب 27  الجزء" + listOfParts[13]);
                break;
            case 270:
                toast_show("ثلاثه ارباع الحزب 27 الجزء" + listOfParts[13]);
                break;
            case 272:
                toast_show("بدايه الحزب 28 الجزء" + listOfParts[013]);
                break;
            case 275:
                toast_show("ربع الحزب 28 الجزء" + listOfParts[013]);
                break;
            case 277:
                toast_show("نصف الحزب 28 الجزء" + listOfParts[013]);
                break;
            case 280:
                toast_show("ثلاثه ارباع الحزب 28 الجزء" + listOfParts[013]);
                break;
            case 282:
                toast_show("بدايه الحزب 29 الجزء" + listOfParts[014]);
                break;
            case 284:
                toast_show("ربع الحزب 29 الجزء" + listOfParts[014]);
                break;
            case 287:
                toast_show("نصف الحزب 29 الجزء" + listOfParts[014]);
                break;
            case 289:
                toast_show("ثلاثه ارباع الحزب 29 الجزء" + listOfParts[014]);
                break;
            case 292:
                toast_show("بدايه الحزب 30 الجزء" + listOfParts[014]);
                break;
            case 295:
                toast_show("ربع الحزب 30 الجزء" + listOfParts[014]);
                break;
            case 297:
                toast_show("نصف الحزب 30 الجزء" + listOfParts[014]);
                break;
            case 299:
                toast_show("ثلاثه ارباع الحزب 30 الجزء" + listOfParts[014]);
                break;
            case 302:
                toast_show("بدايه الحزب 31 الجزء" + listOfParts[015]);
                break;
            case 304:
                toast_show("ربع الحزب 31 الجزء" + listOfParts[015]);
                break;
            case 306:
                toast_show("نصف الحزب 31 الجزء" + listOfParts[015]);
                break;
            case 309:
                toast_show("ثلاثه ارباع الحزب 31 الجزء" + listOfParts[015]);
                break;
            case 312:
                toast_show("بدايه الحزب 32 الجزء" + listOfParts[015]);
                break;
            case 315:
                toast_show("ربع الحزب 32 الجزء" + listOfParts[015]);
                break;
            case 317:
                toast_show("نصف الحزب 32 الجزء" + listOfParts[015]);
                break;
            case 319:
                toast_show("ثلاثه ارباع الحزب 32 الجزء" + listOfParts[015]);
                break;
            case 322:
                toast_show("بدايه الحزب 33 الجزء" + listOfParts[016]);
                break;
            case 324:
                toast_show("ربع الحزب 33 الجزء" + listOfParts[016]);
                break;
            case 326:
                toast_show("نصف الحزب 33 الجزء" + listOfParts[016]);
                break;
            case 329:
                toast_show("ثلاثه ارباع الحزب 33 الجزء" + listOfParts[016]);
                break;
            case 332:
                toast_show("بدايه الحزب 34 الجزء" + listOfParts[016]);
                break;
            case 334:
                toast_show("ربع الحزب 34 الجزء" + listOfParts[016]);
                break;
            case 336:
                toast_show("نصف الحزب 34 الجزء" + listOfParts[016]);
                break;
            case 339:
                toast_show("ثلاثه ارباع الحزب 34 الجزء" + listOfParts[016]);
                break;
            case 342:
                toast_show("بدايه الحزب35  الجزء" + listOfParts[17]);
                break;
            case 344:
                toast_show("ربع الحزب 35 الجزء" + listOfParts[17]);
                break;
            case 347:
                toast_show("نصف الحزب  35 الجزء" + listOfParts[17]);
                break;
            case 350:
                toast_show("ثلاثه ارباع الحزب 35 الجزء" + listOfParts[17]);
                break;
            case 352:
                toast_show("بدايه الحزب 36  الجزء" + listOfParts[17]);
                break;
            case 354:
                toast_show("ربع الحزب 36 الجزء" + listOfParts[17]);
                break;
            case 356:
                toast_show("نصف الحزب 36 الجزء" + listOfParts[17]);
                break;
            case 359:
                toast_show("ثلاثه ارباع الحزب 36 الجزء" + listOfParts[17]);
                break;
            case 362:
                toast_show("بدايه الحزب 37 الجزء" + listOfParts[18]);
                break;
            case 364:
                toast_show("ربع الحزب 37 الجزء" + listOfParts[18]);
                break;
            case 367:
                toast_show("نصف الحزب 37 الجزء" + listOfParts[18]);
                break;
            case 369:
                toast_show("ثلاثه ارباع الحزب 37 الجزء" + listOfParts[18]);
                break;
            case 371:
                toast_show("بدايه الحزب 38 الجزء" + listOfParts[18]);
                break;
            case 374:
                toast_show("ربع الحزب 38 الجزء" + listOfParts[18]);
                break;
            case 377:
                toast_show("نصف الحزب 38 الجزء" + listOfParts[18]);
                break;
            case 379:
                toast_show("ثلاثه ارباع الحزب 38 الجزء" + listOfParts[18]);
                break;
            case 382:
                toast_show("بدايه الحزب 39 الجزء" + listOfParts[19]);
                break;
            case 384:
                toast_show("ربع الحزب 39 الجزء" + listOfParts[19]);
                break;
            case 386:
                toast_show("نصف الحزب 39 الجزء" + listOfParts[19]);
                break;
            case 389:
                toast_show("ثلاثه ارباع الحزب 39 الجزء" + listOfParts[19]);
                break;
            case 392:
                toast_show("بدايه الحزب 40 الجزء" + listOfParts[19]);
                break;
            case 394:
                toast_show("ربع الحزب 40 الجزء" + listOfParts[19]);
                break;
            case 396:
                toast_show("نصف الحزب 40 الجزء" + listOfParts[19]);
                break;
            case 399:
                toast_show("ثلاثه ارباع الحزب 40 الجزء" + listOfParts[19]);
                break;
            case 402:
                toast_show("بدايه الحزب 41 الجزء" + listOfParts[20]);
                break;
            case 404:
                toast_show("ربع الحزب 41 الجزء" + listOfParts[20]);
                break;
            case 407:
                toast_show("نصف الحزب 41 الجزء" + listOfParts[20]);
                break;
            case 410:
                toast_show("ثلاثه ارباع الحزب 41 الجزء" + listOfParts[20]);
                break;
            case 413:
                toast_show("بدايه الحزب 42 الجزء" + listOfParts[20]);
                break;
            case 415:
                toast_show("ربع الحزب 42 الجزء" + listOfParts[20]);
                break;
            case 418:
                toast_show("نصف الحزب 42 الجزء" + listOfParts[20]);
                break;
            case 420:
                toast_show("ثلاثه ارباع الحزب 42 الجزء" + listOfParts[20]);
                break;
            case 422:
                toast_show("بدايه الحزب 43 الجزء" + listOfParts[21]);
                break;
            case 425:
                toast_show("ربع الحزب 43 الجزء" + listOfParts[21]);
                break;
            case 426:
                toast_show("نصف الحزب 43 الجزء" + listOfParts[21]);
                break;
            case 429:
                toast_show("ثلاثه ارباع الحزب 43 الجزء" + listOfParts[21]);
                break;
            case 431:
                toast_show("بدايه الحزب 44 الجزء" + listOfParts[21]);
                break;
            case 433:
                toast_show("ربع الحزب 44 الجزء" + listOfParts[21]);
                break;
            case 436:
                toast_show("نصف الحزب 44 الجزء" + listOfParts[21]);
                break;
            case 439:
                toast_show("ثلاثه ارباع الحزب 44 الجزء" + listOfParts[21]);
                break;
            case 442:
                toast_show("بدايه الحزب 45 الجزء" + listOfParts[22]);
                break;
            case 444:
                toast_show("ربع الحزب 45 الجزء" + listOfParts[22]);
                break;
            case 446:
                toast_show("نصف الحزب 45 الجزء" + listOfParts[22]);
                break;
            case 449:
                toast_show("ثلاثه ارباع الحزب 45 الجزء" + listOfParts[22]);
                break;
            case 451:
                toast_show("بدايه الحزب 46 الجزء" + listOfParts[22]);
                break;
            case 454:
                toast_show("ربع الحزب 46 الجزء" + listOfParts[22]);
                break;
            case 456:
                toast_show("نصف الحزب 46 الجزء" + listOfParts[22]);
                break;
            case 459:
                toast_show("ثلاثه ارباع الحزب 46 الجزء" + listOfParts[22]);
                break;
            case 462:
                toast_show("بدايه الحزب 47 الجزء" + listOfParts[23]);
                break;
            case 464:
                toast_show("ربع الحزب 47 الجزء" + listOfParts[23]);
                break;
            case 467:
                toast_show("نصف الحزب 47 الجزء" + listOfParts[23]);
                break;
            case 469:
                toast_show("ثلاثه ارباع الحزب 47 الجزء" + listOfParts[23]);
                break;
            case 472:
                toast_show("بدايه الحزب 48  الجزء" + listOfParts[23]);
                break;
            case 474:
                toast_show("ربع الحزب 48 الجزء" + listOfParts[23]);
                break;
            case 477:
                toast_show("نصف الحزب 48 الجزء" + listOfParts[23]);
                break;
            case 479:
                toast_show("ثلاثه ارباع الحزب 48 الجزء" + listOfParts[23]);
                break;
            case 482:
                toast_show("بدايه الحزب 49 الجزء" + listOfParts[24]);
                break;
            case 484:
                toast_show("ربع الحزب 49 الجزء" + listOfParts[24]);
                break;
            case 486:
                toast_show("نصف الحزب 49 الجزء" + listOfParts[24]);
                break;
            case 488:
                toast_show("ثلاثه ارباع الحزب 49 الجزء" + listOfParts[24]);
                break;
            case 491:
                toast_show("بدايه الحزب 50 الجزء" + listOfParts[24]);
                break;
            case 493:
                toast_show("ربع الحزب 50 الجزء" + listOfParts[24]);
                break;
            case 496:
                toast_show("نصف الحزب 50 الجزء" + listOfParts[24]);
                break;
            case 499:
                toast_show("ثلاثه ارباع الحزب 50 الجزء" + listOfParts[24]);
                break;
            case 502:
                toast_show("بدايه الحزب 51 الجزء" + listOfParts[25]);
                break;
            case 505:
                toast_show("ربع الحزب 51 الجزء" + listOfParts[25]);
                break;
            case 507:
                toast_show("نصف الحزب 51 الجزء" + listOfParts[25]);
                break;
            case 510:
                toast_show("ثلاثه ارباع الحزب 51 الجزء" + listOfParts[25]);
                break;
            case 513:
                toast_show("بدايه الحزب 52 الجزء" + listOfParts[25]);
                break;
            case 515:
                toast_show("ربع الحزب 52 الجزء" + listOfParts[25]);
                break;
            case 517:
                toast_show("نصف الحزب 52 الجزء" + listOfParts[25]);
                break;
            case 519:
                toast_show("ثلاثه ارباع الحزب 52 الجزء" + listOfParts[25]);
                break;
            case 522:
                toast_show("بدايه الحزب 53 الجزء" + listOfParts[26]);
                break;
            case 524:
                toast_show("ربع الحزب 53 الجزء" + listOfParts[26]);
                break;
            case 526:
                toast_show("نصف الحزب 53 الجزء" + listOfParts[26]);
                break;
            case 529:
                toast_show("ثلاثه ارباع الحزب 53 الجزء" + listOfParts[26]);
                break;
            case 531:
                toast_show("بدايه الحزب 54 الجزء" + listOfParts[26]);
                break;
            case 534:
                toast_show("ربع الحزب 54 الجزء" + listOfParts[26]);
                break;
            case 536:
                toast_show("نصف الحزب 54 الجزء" + listOfParts[26]);
                break;
            case 539:
                toast_show("ثلاثه ارباع الحزب 54 الجزء" + listOfParts[26]);
                break;
            case 542:
                toast_show("بدايه الحزب 55 الجزء" + listOfParts[27]);
                break;
            case 544:
                toast_show("ربع الحزب 55 الجزء" + listOfParts[27]);
                break;
            case 547:
                toast_show("نصف الحزب 55 الجزء" + listOfParts[27]);
                break;
            case 550:
                toast_show("ثلاثه ارباع الحزب 55 الجزء" + listOfParts[27]);
                break;
            case 553:
                toast_show("بدايه الحزب 56 الجزء" + listOfParts[27]);
                break;
            case 554:
                toast_show("ربع الحزب 56 الجزء" + listOfParts[27]);
                break;
            case 558:
                toast_show("نصف الحزب 56 الجزء" + listOfParts[27]);
                break;
            case 560:
                toast_show("ثلاثه ارباع الحزب 56 الجزء" + listOfParts[27]);
                break;
            case 562:
                toast_show("بدايه الحزب 57 الجزء" + listOfParts[28]);
                break;
            case 564:
                toast_show("ربع الحزب 57 الجزء" + listOfParts[28]);
                break;
            case 566:
                toast_show("نصف الحزب 57 الجزء" + listOfParts[28]);
                break;
            case 569:
                toast_show("ثلاثه ارباع الحزب 57 الجزء" + listOfParts[28]);
                break;
            case 572:
                toast_show("بدايه الحزب 58 الجزء" + listOfParts[28]);
                break;
            case 575:
                toast_show("ربع الحزب 58 الجزء" + listOfParts[28]);
                break;
            case 577:
                toast_show("نصف الحزب 58 الجزء" + listOfParts[28]);
                break;
            case 579:
                toast_show("ثلاثه ارباع الحزب 58 الجزء" + listOfParts[28]);
                break;
            case 582:
                toast_show("بدايه الحزب 59 الجزء" + listOfParts[29]);
                break;
            case 585:
                toast_show("ربع الحزب 59 الجزء" + listOfParts[29]);
                break;
            case 587:
                toast_show("نصف الحزب 59 الجزء" + listOfParts[29]);
                break;
            case 589:
                toast_show("ثلاثه ارباع الحزب 59 الجزء" + listOfParts[29]);
                break;
            case 591:
                toast_show("بدايه الحزب 60 الجزء" + listOfParts[29]);
                break;
            case 594:
                toast_show("ربع الحزب 60 الجزء" + listOfParts[29]);
                break;
            case 596:
                toast_show("نصف الحزب 60 الجزء" + listOfParts[29]);
                break;
            case 599:
                toast_show("ثلاثه ارباع الحزب 60 الجزء" + listOfParts[29]);
                break;
  }
}

Future toast_show(String message) {
  return Fluttertoast.showToast(
        msg: message,
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Color(0xff222222),
        textColor: Colors.white,
        fontSize: 18.0
    );
}