.class public Lcom/broadcom/bt/util/mime4j/field/UnstructuredField$Parser;
.super Ljava/lang/Object;
.source "UnstructuredField.java"

# interfaces
.implements Lcom/broadcom/bt/util/mime4j/field/FieldParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/broadcom/bt/util/mime4j/field/UnstructuredField;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Parser"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/broadcom/bt/util/mime4j/field/Field;
    .locals 2
    .parameter "name"
    .parameter "body"
    .parameter "raw"

    .prologue
    .line 62
    invoke-static {p2}, Lcom/broadcom/bt/util/mime4j/decoder/DecoderUtil;->decodeEncodedWords(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    .local v0, value:Ljava/lang/String;
    new-instance v1, Lcom/broadcom/bt/util/mime4j/field/UnstructuredField;

    invoke-direct {v1, p1, p2, p3, v0}, Lcom/broadcom/bt/util/mime4j/field/UnstructuredField;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method