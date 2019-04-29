.class public Lcom/commonsware/android/arXiv/SearchWindow;
.super Landroid/app/Activity;
.source "SearchWindow.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/app/Activity;",
        "Landroid/widget/AdapterView$OnItemSelectedListener;",
        "Landroid/text/TextWatcher;"
    }
.end annotation


# static fields
.field static final DATE_DIALOG_ID:I


# instance fields
.field private dateBtn:Landroid/widget/Button;

.field private field1:Landroid/widget/EditText;

.field private field2:Landroid/widget/EditText;

.field private field3:Landroid/widget/EditText;

.field private finalDate:Ljava/lang/String;

.field private header:Landroid/widget/TextView;

.field private iSelected1:I

.field private iSelected2:I

.field private iSelected3:I

.field private items:[Ljava/lang/String;

.field private mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

.field private mDay:I

.field private mMonth:I

.field private mYear:I

.field private query1:Ljava/lang/String;

.field private query2:Ljava/lang/String;

.field private query3:Ljava/lang/String;

.field private textEntryValue1:Ljava/lang/String;

.field private textEntryValue2:Ljava/lang/String;

.field private textEntryValue3:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 47
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 58
    const-string v0, ""

    iput-object v0, p0, Lcom/commonsware/android/arXiv/SearchWindow;->query1:Ljava/lang/String;

    .line 59
    const-string v0, ""

    iput-object v0, p0, Lcom/commonsware/android/arXiv/SearchWindow;->query2:Ljava/lang/String;

    .line 60
    const-string v0, ""

    iput-object v0, p0, Lcom/commonsware/android/arXiv/SearchWindow;->query3:Ljava/lang/String;

    .line 61
    const-string v0, ""

    iput-object v0, p0, Lcom/commonsware/android/arXiv/SearchWindow;->textEntryValue1:Ljava/lang/String;

    .line 62
    const-string v0, ""

    iput-object v0, p0, Lcom/commonsware/android/arXiv/SearchWindow;->textEntryValue2:Ljava/lang/String;

    .line 63
    const-string v0, ""

    iput-object v0, p0, Lcom/commonsware/android/arXiv/SearchWindow;->textEntryValue3:Ljava/lang/String;

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "Author"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "Title"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "Abstract"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "arXivID"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/commonsware/android/arXiv/SearchWindow;->items:[Ljava/lang/String;

    .line 65
    iput v3, p0, Lcom/commonsware/android/arXiv/SearchWindow;->iSelected1:I

    .line 66
    iput v3, p0, Lcom/commonsware/android/arXiv/SearchWindow;->iSelected2:I

    .line 67
    iput v3, p0, Lcom/commonsware/android/arXiv/SearchWindow;->iSelected3:I

    .line 74
    new-instance v0, Lcom/commonsware/android/arXiv/SearchWindow$1;

    invoke-direct {v0, p0}, Lcom/commonsware/android/arXiv/SearchWindow$1;-><init>(Lcom/commonsware/android/arXiv/SearchWindow;)V

    iput-object v0, p0, Lcom/commonsware/android/arXiv/SearchWindow;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    .line 47
    return-void
.end method

.method static synthetic access$0(Lcom/commonsware/android/arXiv/SearchWindow;I)V
    .locals 0

    .prologue
    .line 68
    iput p1, p0, Lcom/commonsware/android/arXiv/SearchWindow;->mYear:I

    return-void
.end method

.method static synthetic access$1(Lcom/commonsware/android/arXiv/SearchWindow;I)V
    .locals 0

    .prologue
    .line 69
    iput p1, p0, Lcom/commonsware/android/arXiv/SearchWindow;->mMonth:I

    return-void
.end method

.method static synthetic access$2(Lcom/commonsware/android/arXiv/SearchWindow;I)V
    .locals 0

    .prologue
    .line 70
    iput p1, p0, Lcom/commonsware/android/arXiv/SearchWindow;->mDay:I

    return-void
.end method

.method static synthetic access$3(Lcom/commonsware/android/arXiv/SearchWindow;)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lcom/commonsware/android/arXiv/SearchWindow;->dateBtn:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$4(Lcom/commonsware/android/arXiv/SearchWindow;)I
    .locals 1

    .prologue
    .line 68
    iget v0, p0, Lcom/commonsware/android/arXiv/SearchWindow;->mYear:I

    return v0
.end method

.method static synthetic access$5(Lcom/commonsware/android/arXiv/SearchWindow;)I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lcom/commonsware/android/arXiv/SearchWindow;->mMonth:I

    return v0
.end method

.method static synthetic access$6(Lcom/commonsware/android/arXiv/SearchWindow;)I
    .locals 1

    .prologue
    .line 70
    iget v0, p0, Lcom/commonsware/android/arXiv/SearchWindow;->mDay:I

    return v0
.end method

.method static synthetic access$7(Lcom/commonsware/android/arXiv/SearchWindow;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/commonsware/android/arXiv/SearchWindow;->finalDate:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 91
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 96
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 11
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 101
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 102
    const v9, 0x7f030013

    invoke-virtual {p0, v9}, Lcom/commonsware/android/arXiv/SearchWindow;->setContentView(I)V

    .line 104
    const v9, 0x7f090013

    invoke-virtual {p0, v9}, Lcom/commonsware/android/arXiv/SearchWindow;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    iput-object v9, p0, Lcom/commonsware/android/arXiv/SearchWindow;->header:Landroid/widget/TextView;

    .line 105
    invoke-virtual {p0}, Lcom/commonsware/android/arXiv/SearchWindow;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v9

    .line 106
    const-string v10, "fonts/LiberationSans.ttf"

    .line 105
    invoke-static {v9, v10}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v3

    .line 108
    .local v3, "face":Landroid/graphics/Typeface;
    iget-object v9, p0, Lcom/commonsware/android/arXiv/SearchWindow;->header:Landroid/widget/TextView;

    invoke-virtual {v9, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 109
    iget-object v9, p0, Lcom/commonsware/android/arXiv/SearchWindow;->header:Landroid/widget/TextView;

    const-string v10, "Search"

    invoke-virtual {v9, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 111
    const v9, 0x7f09001b

    invoke-virtual {p0, v9}, Lcom/commonsware/android/arXiv/SearchWindow;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/Button;

    iput-object v9, p0, Lcom/commonsware/android/arXiv/SearchWindow;->dateBtn:Landroid/widget/Button;

    .line 112
    const v9, 0x7f090014

    invoke-virtual {p0, v9}, Lcom/commonsware/android/arXiv/SearchWindow;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/Spinner;

    .line 113
    .local v6, "spin1":Landroid/widget/Spinner;
    invoke-virtual {v6, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 114
    const v9, 0x7f090016

    invoke-virtual {p0, v9}, Lcom/commonsware/android/arXiv/SearchWindow;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Spinner;

    .line 115
    .local v7, "spin2":Landroid/widget/Spinner;
    invoke-virtual {v7, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 116
    const v9, 0x7f090018

    invoke-virtual {p0, v9}, Lcom/commonsware/android/arXiv/SearchWindow;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/Spinner;

    .line 117
    .local v8, "spin3":Landroid/widget/Spinner;
    invoke-virtual {v8, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 119
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 120
    const v9, 0x1090008

    iget-object v10, p0, Lcom/commonsware/android/arXiv/SearchWindow;->items:[Ljava/lang/String;

    .line 119
    invoke-direct {v0, p0, v9, v10}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 122
    .local v0, "aa":Landroid/widget/ArrayAdapter;, "Landroid/widget/ArrayAdapter<Ljava/lang/String;>;"
    const v9, 0x1090009

    invoke-virtual {v0, v9}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 123
    invoke-virtual {v6, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 124
    invoke-virtual {v7, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 125
    invoke-virtual {v8, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 127
    const v9, 0x7f090015

    invoke-virtual {p0, v9}, Lcom/commonsware/android/arXiv/SearchWindow;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/commonsware/android/arXiv/SearchWindow;->field1:Landroid/widget/EditText;

    .line 128
    iget-object v9, p0, Lcom/commonsware/android/arXiv/SearchWindow;->field1:Landroid/widget/EditText;

    invoke-virtual {v9, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 129
    const v9, 0x7f090017

    invoke-virtual {p0, v9}, Lcom/commonsware/android/arXiv/SearchWindow;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/commonsware/android/arXiv/SearchWindow;->field2:Landroid/widget/EditText;

    .line 130
    iget-object v9, p0, Lcom/commonsware/android/arXiv/SearchWindow;->field2:Landroid/widget/EditText;

    invoke-virtual {v9, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 131
    const v9, 0x7f090019

    invoke-virtual {p0, v9}, Lcom/commonsware/android/arXiv/SearchWindow;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/EditText;

    iput-object v9, p0, Lcom/commonsware/android/arXiv/SearchWindow;->field3:Landroid/widget/EditText;

    .line 132
    iget-object v9, p0, Lcom/commonsware/android/arXiv/SearchWindow;->field3:Landroid/widget/EditText;

    invoke-virtual {v9, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    new-instance v5, Ljava/text/SimpleDateFormat;

    const-string v9, "yyyyMMdd"

    invoke-direct {v5, v9}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 135
    .local v5, "formatter":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    .line 136
    .local v2, "currentTime_1":Ljava/util/Date;
    invoke-virtual {v5, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    .line 137
    .local v4, "finalDate":Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v10, "2359"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 139
    const-string v9, "arXiv - "

    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 142
    .local v1, "c":Ljava/util/Calendar;
    const/4 v9, 0x1

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lcom/commonsware/android/arXiv/SearchWindow;->mYear:I

    .line 143
    const/4 v9, 0x2

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lcom/commonsware/android/arXiv/SearchWindow;->mMonth:I

    .line 144
    const/4 v9, 0x5

    invoke-virtual {v1, v9}, Ljava/util/Calendar;->get(I)I

    move-result v9

    iput v9, p0, Lcom/commonsware/android/arXiv/SearchWindow;->mDay:I

    .line 146
    iget v9, p0, Lcom/commonsware/android/arXiv/SearchWindow;->mMonth:I

    const/16 v10, 0x9

    if-le v9, v10, :cond_0

    .line 147
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/commonsware/android/arXiv/SearchWindow;->mYear:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/commonsware/android/arXiv/SearchWindow;->mMonth:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/commonsware/android/arXiv/SearchWindow;->mDay:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "2399"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 151
    :goto_0
    return-void

    .line 149
    :cond_0
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget v10, p0, Lcom/commonsware/android/arXiv/SearchWindow;->mYear:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "0"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/commonsware/android/arXiv/SearchWindow;->mMonth:I

    add-int/lit8 v10, v10, 0x1

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/commonsware/android/arXiv/SearchWindow;->mDay:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "2399"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method protected onCreateDialog(I)Landroid/app/Dialog;
    .locals 6
    .param p1, "id"    # I

    .prologue
    .line 155
    packed-switch p1, :pswitch_data_0

    .line 160
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 157
    :pswitch_0
    new-instance v0, Landroid/app/DatePickerDialog;

    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchWindow;->mDateSetListener:Landroid/app/DatePickerDialog$OnDateSetListener;

    iget v3, p0, Lcom/commonsware/android/arXiv/SearchWindow;->mYear:I

    iget v4, p0, Lcom/commonsware/android/arXiv/SearchWindow;->mMonth:I

    .line 158
    iget v5, p0, Lcom/commonsware/android/arXiv/SearchWindow;->mDay:I

    move-object v1, p0

    .line 157
    invoke-direct/range {v0 .. v5}, Landroid/app/DatePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DatePickerDialog$OnDateSetListener;III)V

    goto :goto_0

    .line 155
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 166
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    invoke-virtual {p1}, Landroid/widget/AdapterView;->getId()I

    move-result v2

    int-to-long v0, v2

    .line 167
    .local v0, "idn":J
    const-wide/32 v2, 0x7f090014    # 1.053000271E-314

    cmp-long v2, v0, v2

    if-nez v2, :cond_1

    .line 168
    iput p3, p0, Lcom/commonsware/android/arXiv/SearchWindow;->iSelected1:I

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 169
    :cond_1
    const-wide/32 v2, 0x7f090016    # 1.053000272E-314

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 170
    iput p3, p0, Lcom/commonsware/android/arXiv/SearchWindow;->iSelected2:I

    goto :goto_0

    .line 171
    :cond_2
    const-wide/32 v2, 0x7f090018    # 1.053000273E-314

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 172
    iput p3, p0, Lcom/commonsware/android/arXiv/SearchWindow;->iSelected3:I

    goto :goto_0
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 177
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 180
    const-string v0, ""

    .line 181
    .local v0, "tempt":Ljava/lang/String;
    iget-object v1, p0, Lcom/commonsware/android/arXiv/SearchWindow;->field1:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 182
    iget-object v1, p0, Lcom/commonsware/android/arXiv/SearchWindow;->textEntryValue1:Ljava/lang/String;

    if-eq v1, v0, :cond_0

    .line 183
    iput-object v0, p0, Lcom/commonsware/android/arXiv/SearchWindow;->textEntryValue1:Ljava/lang/String;

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/commonsware/android/arXiv/SearchWindow;->field2:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 186
    iget-object v1, p0, Lcom/commonsware/android/arXiv/SearchWindow;->textEntryValue2:Ljava/lang/String;

    if-eq v1, v0, :cond_1

    .line 187
    iput-object v0, p0, Lcom/commonsware/android/arXiv/SearchWindow;->textEntryValue2:Ljava/lang/String;

    .line 189
    :cond_1
    iget-object v1, p0, Lcom/commonsware/android/arXiv/SearchWindow;->field3:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/commonsware/android/arXiv/SearchWindow;->textEntryValue3:Ljava/lang/String;

    if-eq v1, v0, :cond_2

    .line 191
    iput-object v0, p0, Lcom/commonsware/android/arXiv/SearchWindow;->textEntryValue3:Ljava/lang/String;

    .line 193
    :cond_2
    return-void
.end method

.method public pressedDateButton(Landroid/view/View;)V
    .locals 1
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 196
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/commonsware/android/arXiv/SearchWindow;->showDialog(I)V

    .line 197
    return-void
.end method

.method public pressedSearchButton(Landroid/view/View;)V
    .locals 14
    .param p1, "button"    # Landroid/view/View;

    .prologue
    const/16 v13, 0x1e

    const/4 v12, 0x3

    const/4 v11, 0x2

    const/4 v10, 0x1

    .line 200
    const-string v2, ""

    .line 201
    .local v2, "query":Ljava/lang/String;
    const-string v0, ""

    .line 202
    .local v0, "idlist":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Search: "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/commonsware/android/arXiv/SearchWindow;->textEntryValue1:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 203
    .local v3, "tittext":Ljava/lang/String;
    iget v6, p0, Lcom/commonsware/android/arXiv/SearchWindow;->iSelected1:I

    if-nez v6, :cond_5

    .line 204
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "au:%22"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/commonsware/android/arXiv/SearchWindow;->textEntryValue1:Ljava/lang/String;

    const-string v8, " "

    const-string v9, "+"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "-"

    const-string v9, "_"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 205
    const-string v7, "%22"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 204
    iput-object v6, p0, Lcom/commonsware/android/arXiv/SearchWindow;->query1:Ljava/lang/String;

    .line 206
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchWindow;->query1:Ljava/lang/String;

    .line 216
    :cond_0
    :goto_0
    iget-object v6, p0, Lcom/commonsware/android/arXiv/SearchWindow;->textEntryValue2:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/commonsware/android/arXiv/SearchWindow;->textEntryValue2:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 217
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/commonsware/android/arXiv/SearchWindow;->textEntryValue2:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 218
    iget v6, p0, Lcom/commonsware/android/arXiv/SearchWindow;->iSelected2:I

    if-nez v6, :cond_9

    .line 219
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "au:%22"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/commonsware/android/arXiv/SearchWindow;->textEntryValue2:Ljava/lang/String;

    const-string v8, " "

    const-string v9, "+"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "-"

    const-string v9, "_"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 220
    const-string v7, "%22"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 219
    iput-object v6, p0, Lcom/commonsware/android/arXiv/SearchWindow;->query2:Ljava/lang/String;

    .line 221
    if-eqz v2, :cond_8

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    .line 222
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "+AND+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/commonsware/android/arXiv/SearchWindow;->query2:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 244
    :cond_1
    :goto_1
    iget-object v6, p0, Lcom/commonsware/android/arXiv/SearchWindow;->textEntryValue3:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/commonsware/android/arXiv/SearchWindow;->textEntryValue3:Ljava/lang/String;

    const-string v7, ""

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 245
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/commonsware/android/arXiv/SearchWindow;->textEntryValue3:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 246
    iget v6, p0, Lcom/commonsware/android/arXiv/SearchWindow;->iSelected3:I

    if-nez v6, :cond_f

    .line 247
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "au:%22"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/commonsware/android/arXiv/SearchWindow;->textEntryValue3:Ljava/lang/String;

    const-string v8, " "

    const-string v9, "+"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "-"

    const-string v9, "_"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 248
    const-string v7, "%22"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 247
    iput-object v6, p0, Lcom/commonsware/android/arXiv/SearchWindow;->query3:Ljava/lang/String;

    .line 249
    if-eqz v2, :cond_e

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_e

    .line 250
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "+AND+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/commonsware/android/arXiv/SearchWindow;->query3:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 273
    :cond_2
    :goto_2
    const-string v4, ""

    .line 274
    .local v4, "totalsearch":Ljava/lang/String;
    const-string v6, ""

    if-eq v2, v6, :cond_3

    if-nez v2, :cond_14

    .line 275
    :cond_3
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "search_query=lastUpdatedDate:[199008010001+TO+"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    iget-object v7, p0, Lcom/commonsware/android/arXiv/SearchWindow;->finalDate:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 275
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 281
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "id_list="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 283
    new-instance v1, Landroid/content/Intent;

    const-class v6, Lcom/commonsware/android/arXiv/SearchListWindow;

    invoke-direct {v1, p0, v6}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 284
    .local v1, "myIntent":Landroid/content/Intent;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v6

    if-le v6, v13, :cond_4

    .line 285
    const/4 v6, 0x0

    invoke-virtual {v3, v6, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 287
    :cond_4
    const-string v6, "keyname"

    invoke-virtual {v1, v6, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 288
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "http://export.arxiv.org/api/query?"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 289
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 290
    const-string v7, "&sortBy=lastUpdatedDate&sortOrder=descending&start=0&max_results=20"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 288
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 291
    .local v5, "urlad":Ljava/lang/String;
    const-string v6, "arXiv - "

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const-string v6, "keyurl"

    invoke-virtual {v1, v6, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v6, "keyquery"

    invoke-virtual {v1, v6, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    invoke-virtual {p0, v1}, Lcom/commonsware/android/arXiv/SearchWindow;->startActivity(Landroid/content/Intent;)V

    .line 295
    return-void

    .line 207
    .end local v1    # "myIntent":Landroid/content/Intent;
    .end local v4    # "totalsearch":Ljava/lang/String;
    .end local v5    # "urlad":Ljava/lang/String;
    :cond_5
    iget v6, p0, Lcom/commonsware/android/arXiv/SearchWindow;->iSelected1:I

    if-ne v6, v10, :cond_6

    .line 208
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ti:%22"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/commonsware/android/arXiv/SearchWindow;->textEntryValue1:Ljava/lang/String;

    const-string v8, " "

    const-string v9, "+"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%22"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/commonsware/android/arXiv/SearchWindow;->query1:Ljava/lang/String;

    .line 209
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchWindow;->query1:Ljava/lang/String;

    .line 210
    goto/16 :goto_0

    :cond_6
    iget v6, p0, Lcom/commonsware/android/arXiv/SearchWindow;->iSelected1:I

    if-ne v6, v11, :cond_7

    .line 211
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "abs:%22"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/commonsware/android/arXiv/SearchWindow;->textEntryValue1:Ljava/lang/String;

    const-string v8, " "

    const-string v9, "+"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%22"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/commonsware/android/arXiv/SearchWindow;->query1:Ljava/lang/String;

    .line 212
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchWindow;->query1:Ljava/lang/String;

    .line 213
    goto/16 :goto_0

    :cond_7
    iget v6, p0, Lcom/commonsware/android/arXiv/SearchWindow;->iSelected1:I

    if-ne v6, v12, :cond_0

    .line 214
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/commonsware/android/arXiv/SearchWindow;->textEntryValue1:Ljava/lang/String;

    const-string v8, " "

    const-string v9, ","

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 224
    :cond_8
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchWindow;->query2:Ljava/lang/String;

    .line 226
    goto/16 :goto_1

    :cond_9
    iget v6, p0, Lcom/commonsware/android/arXiv/SearchWindow;->iSelected2:I

    if-ne v6, v10, :cond_b

    .line 227
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ti:%22"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/commonsware/android/arXiv/SearchWindow;->textEntryValue2:Ljava/lang/String;

    const-string v8, " "

    const-string v9, "+"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%22"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/commonsware/android/arXiv/SearchWindow;->query2:Ljava/lang/String;

    .line 228
    if-eqz v2, :cond_a

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    .line 229
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "+AND+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/commonsware/android/arXiv/SearchWindow;->query2:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 230
    goto/16 :goto_1

    .line 231
    :cond_a
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchWindow;->query2:Ljava/lang/String;

    .line 233
    goto/16 :goto_1

    :cond_b
    iget v6, p0, Lcom/commonsware/android/arXiv/SearchWindow;->iSelected2:I

    if-ne v6, v11, :cond_d

    .line 234
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "abs:%22"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/commonsware/android/arXiv/SearchWindow;->textEntryValue2:Ljava/lang/String;

    const-string v8, " "

    const-string v9, "+"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%22"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/commonsware/android/arXiv/SearchWindow;->query2:Ljava/lang/String;

    .line 235
    if-eqz v2, :cond_c

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_c

    .line 236
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "+AND+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/commonsware/android/arXiv/SearchWindow;->query2:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 237
    goto/16 :goto_1

    .line 238
    :cond_c
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchWindow;->query2:Ljava/lang/String;

    .line 240
    goto/16 :goto_1

    :cond_d
    iget v6, p0, Lcom/commonsware/android/arXiv/SearchWindow;->iSelected2:I

    if-ne v6, v12, :cond_1

    .line 241
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/commonsware/android/arXiv/SearchWindow;->textEntryValue2:Ljava/lang/String;

    const-string v8, " "

    const-string v9, ","

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_1

    .line 252
    :cond_e
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchWindow;->query3:Ljava/lang/String;

    .line 254
    goto/16 :goto_2

    :cond_f
    iget v6, p0, Lcom/commonsware/android/arXiv/SearchWindow;->iSelected3:I

    if-ne v6, v10, :cond_11

    .line 255
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "ti:%22"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/commonsware/android/arXiv/SearchWindow;->textEntryValue3:Ljava/lang/String;

    const-string v8, " "

    const-string v9, "+"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%22"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/commonsware/android/arXiv/SearchWindow;->query3:Ljava/lang/String;

    .line 256
    if-eqz v2, :cond_10

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_10

    .line 257
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "+AND+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/commonsware/android/arXiv/SearchWindow;->query3:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 258
    goto/16 :goto_2

    .line 259
    :cond_10
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchWindow;->query3:Ljava/lang/String;

    .line 261
    goto/16 :goto_2

    :cond_11
    iget v6, p0, Lcom/commonsware/android/arXiv/SearchWindow;->iSelected3:I

    if-ne v6, v11, :cond_13

    .line 262
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "abs:%22"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/commonsware/android/arXiv/SearchWindow;->textEntryValue3:Ljava/lang/String;

    const-string v8, " "

    const-string v9, "+"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "%22"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/commonsware/android/arXiv/SearchWindow;->query3:Ljava/lang/String;

    .line 263
    if-eqz v2, :cond_12

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_12

    .line 264
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v7, "+AND+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/commonsware/android/arXiv/SearchWindow;->query3:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 265
    goto/16 :goto_2

    .line 266
    :cond_12
    iget-object v2, p0, Lcom/commonsware/android/arXiv/SearchWindow;->query3:Ljava/lang/String;

    .line 268
    goto/16 :goto_2

    :cond_13
    iget v6, p0, Lcom/commonsware/android/arXiv/SearchWindow;->iSelected3:I

    if-ne v6, v12, :cond_2

    .line 269
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v7, p0, Lcom/commonsware/android/arXiv/SearchWindow;->textEntryValue3:Ljava/lang/String;

    const-string v8, " "

    const-string v9, ","

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 278
    .restart local v4    # "totalsearch":Ljava/lang/String;
    :cond_14
    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "search_query=lastUpdatedDate:[199008010001+TO+"

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 279
    iget-object v7, p0, Lcom/commonsware/android/arXiv/SearchWindow;->finalDate:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]+AND+"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "&"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 278
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_3
.end method
