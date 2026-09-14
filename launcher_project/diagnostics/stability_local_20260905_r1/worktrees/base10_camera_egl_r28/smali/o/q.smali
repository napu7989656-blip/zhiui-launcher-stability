.class public final Lo/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo/v6;
.implements Lo/p;


# static fields
.field public static final ͱ:Ljava/util/Map;


# instance fields
.field public final Ͱ:Ljava/lang/Class;


# direct methods
.method public static constructor <clinit>()V
    .locals 23

    .line 1
    const-class v0, Lo/g4;

    .line 2
    .line 3
    const-class v1, Lkotlin/jvm/functions/Function1;

    .line 4
    .line 5
    const-class v2, Lo/u4;

    .line 6
    .line 7
    const-class v3, Lkotlin/jvm/functions/Function3;

    .line 8
    .line 9
    const-class v4, Lo/v4;

    .line 10
    .line 11
    const-class v5, Lo/w4;

    .line 12
    .line 13
    const-class v6, Lo/x4;

    .line 14
    .line 15
    const-class v7, Lo/y4;

    .line 16
    .line 17
    const-class v8, Lo/z4;

    .line 18
    .line 19
    const-class v9, Lo/a5;

    .line 20
    .line 21
    const-class v10, Lo/h4;

    .line 22
    .line 23
    const-class v11, Lo/i4;

    .line 24
    .line 25
    const-class v12, Lo/j4;

    .line 26
    .line 27
    const-class v13, Lo/k4;

    .line 28
    .line 29
    const-class v14, Lo/l4;

    .line 30
    .line 31
    const-class v15, Lo/m4;

    .line 32
    .line 33
    const-class v16, Lo/n4;

    .line 34
    .line 35
    const-class v17, Lo/o4;

    .line 36
    .line 37
    const-class v18, Lo/p4;

    .line 38
    .line 39
    const-class v19, Lo/q4;

    .line 40
    .line 41
    const-class v20, Lo/r4;

    .line 42
    .line 43
    const-class v21, Lo/s4;

    .line 44
    .line 45
    const-class v22, Lo/t4;

    .line 46
    .line 47
    filled-new-array/range {v0 .. v22}, [Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 52
    .line 53
    .line 54
    move-result-object v0

    .line 55
    const-string v1, "asList(this)"

    .line 56
    .line 57
    invoke-static {v0, v1}, Lo/e6;->Ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    new-instance v1, Ljava/util/ArrayList;

    .line 61
    .line 62
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    .line 63
    .line 64
    .line 65
    move-result v2

    .line 66
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 67
    .line 68
    .line 69
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    const/4 v2, 0x0

    .line 74
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_1

    .line 79
    .line 80
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 81
    .line 82
    .line 83
    move-result-object v3

    .line 84
    add-int/lit8 v4, v2, 0x1

    .line 85
    .line 86
    if-ltz v2, :cond_0

    .line 87
    .line 88
    check-cast v3, Ljava/lang/Class;

    .line 89
    .line 90
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 91
    .line 92
    .line 93
    move-result-object v2

    .line 94
    new-instance v5, Lo/mc;

    .line 95
    .line 96
    invoke-direct {v5, v3, v2}, Lo/mc;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 97
    .line 98
    .line 99
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 100
    .line 101
    .line 102
    move v2, v4

    .line 103
    goto :goto_0

    .line 104
    :cond_0
    new-instance v0, Ljava/lang/ArithmeticException;

    .line 105
    .line 106
    const-string v1, "Index overflow has happened."

    .line 107
    .line 108
    invoke-direct {v0, v1}, Ljava/lang/ArithmeticException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw v0

    .line 112
    :cond_1
    invoke-static {v1}, Lo/ϲ;->Π(Ljava/util/ArrayList;)Ljava/util/Map;

    .line 113
    .line 114
    .line 115
    move-result-object v0

    .line 116
    sput-object v0, Lo/q;->ͱ:Ljava/util/Map;

    .line 117
    .line 118
    new-instance v0, Ljava/util/HashMap;

    .line 119
    .line 120
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 121
    .line 122
    .line 123
    const-string v1, "boolean"

    .line 124
    .line 125
    const-string v2, "kotlin.Boolean"

    .line 126
    .line 127
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    .line 129
    .line 130
    const-string v1, "char"

    .line 131
    .line 132
    const-string v3, "kotlin.Char"

    .line 133
    .line 134
    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    .line 136
    .line 137
    const-string v1, "byte"

    .line 138
    .line 139
    const-string v4, "kotlin.Byte"

    .line 140
    .line 141
    invoke-virtual {v0, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    .line 143
    .line 144
    const-string v1, "short"

    .line 145
    .line 146
    const-string v5, "kotlin.Short"

    .line 147
    .line 148
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    const-string v1, "int"

    .line 152
    .line 153
    const-string v6, "kotlin.Int"

    .line 154
    .line 155
    invoke-virtual {v0, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    const-string v1, "float"

    .line 159
    .line 160
    const-string v7, "kotlin.Float"

    .line 161
    .line 162
    invoke-virtual {v0, v1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    const-string v1, "long"

    .line 166
    .line 167
    const-string v8, "kotlin.Long"

    .line 168
    .line 169
    invoke-virtual {v0, v1, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 170
    .line 171
    .line 172
    const-string v1, "double"

    .line 173
    .line 174
    const-string v9, "kotlin.Double"

    .line 175
    .line 176
    invoke-virtual {v0, v1, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    .line 178
    .line 179
    new-instance v1, Ljava/util/HashMap;

    .line 180
    .line 181
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 182
    .line 183
    .line 184
    const-string v10, "java.lang.Boolean"

    .line 185
    .line 186
    invoke-virtual {v1, v10, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    .line 188
    .line 189
    const-string v2, "java.lang.Character"

    .line 190
    .line 191
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    .line 193
    .line 194
    const-string v2, "java.lang.Byte"

    .line 195
    .line 196
    invoke-virtual {v1, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    .line 198
    .line 199
    const-string v2, "java.lang.Short"

    .line 200
    .line 201
    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 202
    .line 203
    .line 204
    const-string v2, "java.lang.Integer"

    .line 205
    .line 206
    invoke-virtual {v1, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 207
    .line 208
    .line 209
    const-string v2, "java.lang.Float"

    .line 210
    .line 211
    invoke-virtual {v1, v2, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    const-string v2, "java.lang.Long"

    .line 215
    .line 216
    invoke-virtual {v1, v2, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    .line 218
    .line 219
    const-string v2, "java.lang.Double"

    .line 220
    .line 221
    invoke-virtual {v1, v2, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    new-instance v2, Ljava/util/HashMap;

    .line 225
    .line 226
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 227
    .line 228
    .line 229
    const-string v3, "java.lang.Object"

    .line 230
    .line 231
    const-string v4, "kotlin.Any"

    .line 232
    .line 233
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    .line 235
    .line 236
    const-string v3, "java.lang.String"

    .line 237
    .line 238
    const-string v4, "kotlin.String"

    .line 239
    .line 240
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    .line 242
    .line 243
    const-string v3, "java.lang.CharSequence"

    .line 244
    .line 245
    const-string v4, "kotlin.CharSequence"

    .line 246
    .line 247
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    const-string v3, "java.lang.Throwable"

    .line 251
    .line 252
    const-string v4, "kotlin.Throwable"

    .line 253
    .line 254
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    .line 256
    .line 257
    const-string v3, "java.lang.Cloneable"

    .line 258
    .line 259
    const-string v4, "kotlin.Cloneable"

    .line 260
    .line 261
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 262
    .line 263
    .line 264
    const-string v3, "java.lang.Number"

    .line 265
    .line 266
    const-string v4, "kotlin.Number"

    .line 267
    .line 268
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    .line 270
    .line 271
    const-string v3, "java.lang.Comparable"

    .line 272
    .line 273
    const-string v4, "kotlin.Comparable"

    .line 274
    .line 275
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    .line 277
    .line 278
    const-string v3, "java.lang.Enum"

    .line 279
    .line 280
    const-string v4, "kotlin.Enum"

    .line 281
    .line 282
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    .line 284
    .line 285
    const-string v3, "java.lang.annotation.Annotation"

    .line 286
    .line 287
    const-string v4, "kotlin.Annotation"

    .line 288
    .line 289
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 290
    .line 291
    .line 292
    const-string v3, "java.lang.Iterable"

    .line 293
    .line 294
    const-string v4, "kotlin.collections.Iterable"

    .line 295
    .line 296
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    .line 298
    .line 299
    const-string v3, "java.util.Iterator"

    .line 300
    .line 301
    const-string v4, "kotlin.collections.Iterator"

    .line 302
    .line 303
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 304
    .line 305
    .line 306
    const-string v3, "java.util.Collection"

    .line 307
    .line 308
    const-string v4, "kotlin.collections.Collection"

    .line 309
    .line 310
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 311
    .line 312
    .line 313
    const-string v3, "java.util.List"

    .line 314
    .line 315
    const-string v4, "kotlin.collections.List"

    .line 316
    .line 317
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    .line 319
    .line 320
    const-string v3, "java.util.Set"

    .line 321
    .line 322
    const-string v4, "kotlin.collections.Set"

    .line 323
    .line 324
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    const-string v3, "java.util.ListIterator"

    .line 328
    .line 329
    const-string v4, "kotlin.collections.ListIterator"

    .line 330
    .line 331
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 332
    .line 333
    .line 334
    const-string v3, "java.util.Map"

    .line 335
    .line 336
    const-string v4, "kotlin.collections.Map"

    .line 337
    .line 338
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    .line 340
    .line 341
    const-string v3, "java.util.Map$Entry"

    .line 342
    .line 343
    const-string v4, "kotlin.collections.Map.Entry"

    .line 344
    .line 345
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    .line 347
    .line 348
    const-string v3, "kotlin.jvm.internal.StringCompanionObject"

    .line 349
    .line 350
    const-string v4, "kotlin.String.Companion"

    .line 351
    .line 352
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 353
    .line 354
    .line 355
    const-string v3, "kotlin.jvm.internal.EnumCompanionObject"

    .line 356
    .line 357
    const-string v4, "kotlin.Enum.Companion"

    .line 358
    .line 359
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 363
    .line 364
    .line 365
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 366
    .line 367
    .line 368
    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 369
    .line 370
    .line 371
    move-result-object v0

    .line 372
    const-string v1, "primitiveFqNames.values"

    .line 373
    .line 374
    invoke-static {v0, v1}, Lo/e6;->Ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    .line 376
    .line 377
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 382
    .line 383
    .line 384
    move-result v1

    .line 385
    if-eqz v1, :cond_2

    .line 386
    .line 387
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 388
    .line 389
    .line 390
    move-result-object v1

    .line 391
    check-cast v1, Ljava/lang/String;

    .line 392
    .line 393
    new-instance v3, Ljava/lang/StringBuilder;

    .line 394
    .line 395
    const-string v4, "kotlin.jvm.internal."

    .line 396
    .line 397
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 398
    .line 399
    .line 400
    const-string v4, "kotlinName"

    .line 401
    .line 402
    invoke-static {v1, v4}, Lo/e6;->Ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    .line 403
    .line 404
    .line 405
    invoke-static {v1}, Lo/rh;->Δ(Ljava/lang/String;)Ljava/lang/String;

    .line 406
    .line 407
    .line 408
    move-result-object v4

    .line 409
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    .line 411
    .line 412
    const-string v4, "CompanionObject"

    .line 413
    .line 414
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    .line 416
    .line 417
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 418
    .line 419
    .line 420
    move-result-object v3

    .line 421
    const-string v4, ".Companion"

    .line 422
    .line 423
    invoke-virtual {v1, v4}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 424
    .line 425
    .line 426
    move-result-object v1

    .line 427
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 428
    .line 429
    .line 430
    goto :goto_1

    .line 431
    :cond_2
    sget-object v0, Lo/q;->ͱ:Ljava/util/Map;

    .line 432
    .line 433
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 434
    .line 435
    .line 436
    move-result-object v0

    .line 437
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 438
    .line 439
    .line 440
    move-result-object v0

    .line 441
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 442
    .line 443
    .line 444
    move-result v1

    .line 445
    if-eqz v1, :cond_3

    .line 446
    .line 447
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 448
    .line 449
    .line 450
    move-result-object v1

    .line 451
    check-cast v1, Ljava/util/Map$Entry;

    .line 452
    .line 453
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 454
    .line 455
    .line 456
    move-result-object v3

    .line 457
    check-cast v3, Ljava/lang/Class;

    .line 458
    .line 459
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 460
    .line 461
    .line 462
    move-result-object v1

    .line 463
    check-cast v1, Ljava/lang/Number;

    .line 464
    .line 465
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 466
    .line 467
    .line 468
    move-result v1

    .line 469
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 470
    .line 471
    .line 472
    move-result-object v3

    .line 473
    new-instance v4, Ljava/lang/StringBuilder;

    .line 474
    .line 475
    const-string v5, "o.b5"

    .line 476
    .line 477
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 478
    .line 479
    .line 480
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 481
    .line 482
    .line 483
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 484
    .line 485
    .line 486
    move-result-object v1

    .line 487
    invoke-virtual {v2, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 488
    .line 489
    .line 490
    goto :goto_2

    .line 491
    :cond_3
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 492
    .line 493
    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    .line 494
    .line 495
    .line 496
    move-result v1

    .line 497
    invoke-static {v1}, Lo/a2;->Ή(I)I

    .line 498
    .line 499
    .line 500
    move-result v1

    .line 501
    invoke-direct {v0, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 502
    .line 503
    .line 504
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    .line 505
    .line 506
    .line 507
    move-result-object v1

    .line 508
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 509
    .line 510
    .line 511
    move-result-object v1

    .line 512
    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 513
    .line 514
    .line 515
    move-result v2

    .line 516
    if-eqz v2, :cond_4

    .line 517
    .line 518
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 519
    .line 520
    .line 521
    move-result-object v2

    .line 522
    check-cast v2, Ljava/util/Map$Entry;

    .line 523
    .line 524
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 525
    .line 526
    .line 527
    move-result-object v3

    .line 528
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 529
    .line 530
    .line 531
    move-result-object v2

    .line 532
    check-cast v2, Ljava/lang/String;

    .line 533
    .line 534
    invoke-static {v2}, Lo/rh;->Δ(Ljava/lang/String;)Ljava/lang/String;

    .line 535
    .line 536
    .line 537
    move-result-object v2

    .line 538
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 539
    .line 540
    .line 541
    goto :goto_3

    .line 542
    :cond_4
    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 1

    .line 1
    const-string v0, "jClass"

    invoke-static {p1, v0}, Lo/e6;->ͳ(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lo/q;->Ͱ:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Lo/q;

    if-eqz v0, :cond_0

    invoke-static {p0}, Lo/a2;->ͽ(Lo/v6;)Ljava/lang/Class;

    move-result-object v0

    check-cast p1, Lo/v6;

    invoke-static {p1}, Lo/a2;->ͽ(Lo/v6;)Ljava/lang/Class;

    move-result-object p1

    invoke-static {v0, p1}, Lo/e6;->ˋ(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    invoke-static {p0}, Lo/a2;->ͽ(Lo/v6;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lo/q;->Ͱ:Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " (Kotlin reflection is not available)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final ˋ()Ljava/lang/Class;
    .locals 1

    .line 1
    iget-object v0, p0, Lo/q;->Ͱ:Ljava/lang/Class;

    return-object v0
.end method
