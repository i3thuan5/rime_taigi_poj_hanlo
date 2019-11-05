Feature: Rime白話字漢羅輸入法方案ê候選詞規則

  Scenario Outline: 01.完整拼音選字（Ē-sái選漢字a̍h是羅馬字）
    Given 01.Nā詞庫內底有「<jisu>」chit-ê字詞，拼音是「<phengim_with_space>」。
     When 01.輸入完整拼音字母（無空白）。
     Then 01.候選詞內底ē出現字詞「<jisu>」。

    Examples: 試驗範例
     | jisu | phengim_with_space |
     | Pe̍h-ōe-jī | Peh8 oe7 ji7 |
     | 白話字 | peh8 oe7 ji7 |


  Scenario Outline: 02.完整拼音選字，nā第1、4聲免phah數字（Ē-sái選漢字a̍h是羅馬字）
    Given 02.Nā詞庫內底有「<jisu>」chit-ê字詞，拼音是「<phengim_with_space>」。
     When 02.輸入完整拼音字母（無空白），nā第1、4聲免phah數字。
     Then 02.候選詞內底ē出現字詞「<jisu>」。

    Examples: 試驗範例
     | jisu | phengim_with_space |
     | Kong-sī | Kong1 si7 |
     | 公視 | kong1 si7 |
     | tha̍k-chheh | thak8 chheh4 |
     | 讀冊 | thak8 chheh4 |

  Scenario Outline: 03.無聲調拼音選字（Ē-sái選漢字a̍h是羅馬字）
    Given 03.Nā詞庫內底有「<jisu>」chit-ê字詞，拼音是「<phengim_with_space>」。
     When 03.輸入無聲調拼音字母（無空白）。
     Then 03.候選詞內底ē出現字詞「<jisu>」。

    Examples: 試驗範例
     | jisu | phengim_with_space |
     | Pe̍h-ōe-jī | Peh8 oe7 ji7 |
     | 白話字 | peh8 oe7 ji7 |


  Scenario Outline: 04.頭1-ê拉丁字母選字（Ē-sái選漢字a̍h是羅馬字）
    Given 04.Nā詞庫內底有「<jisu>」chit-ê字詞，拼音是「<phengim_with_space>」。
     When 04.Kan-na輸入拼音頭1-ê拉丁字母。
     Then 04.候選詞內底ē出現字詞「<jisu>」。

    Examples: 試驗範例
     | jisu | phengim_with_space |
     | Pe̍h-ōe-jī | Peh8 oe7 ji7 |
     | 白話字 | peh8 oe7 ji7 |
     | cha̍p-chhài-mī | chap8 chhai3 mi7 |
     | 雜菜麵 | chap8 chhai3 mi7 |


  Scenario Outline: 05.頭1-ê台語羅馬字字母選字（Ē-sái選漢字a̍h是羅馬字）
    Given 05.Nā詞庫內底有「<jisu>」chit-ê字詞，拼音是「<phengim_with_space>」。
     When 05.Kan-na輸入拼音頭1-ê台語羅馬字字母。
     Then 05.候選詞內底ē出現字詞「<jisu>」。

    Examples: 試驗範例
     | jisu | phengim_with_space |
     | Pe̍h-ōe-jī | Peh8 oe7 ji7 |
     | 白話字 | peh8 oe7 ji7 |
     | cha̍p-chhài-mī | chap8 chhai3 mi7 |
     | 雜菜麵 | chap8 chhai3 mi7 |


  Scenario Outline: 06.拼音字母ài完整chiah thang選字（Ē-sái選漢字a̍h是羅馬字）
    Given 06.Nā詞庫內底有「<jisu>」chit-ê字詞，拼音是「<phengim_with_space>」。
     When 06.輸入無完整ê拼音字母「<phengim_sujip>」。
     Then 06.候選詞內底bē出現字詞「<jisu>」。

    Examples: 試驗範例
     | jisu | phengim_with_space | phengim_sujip |
     | Pe̍h-ōe-jī | Peh8 oe7 ji7 | peoeji |
     | 白話字 | peh8 oe7 ji7 | peoeji |


  Scenario Outline: 07.預設詞頻選字
    Given 07.Nā詞庫內底有「<jisu1>」、「<jisu2>」chit 2-ê字詞，拼音kāng款是「<phengim_with_space>」，而且字詞「<jisu1>」預設ê詞頻khah koân。
     When 07.輸入完整ê拼音字母（無空白）。
     Then 07.候選詞內底ē先出現字詞「<jisu1>」，chiah出現「<jisu2>」。

    Examples: 試驗範例
     | jisu1 | jisu2 | phengim_with_space |
     | 你 | 理 | li2 |
     | 駛車 | 屎車 | sai2 chhia1 |


  Scenario Outline: 08.使用者詞頻選字
    Given 08.Nā詞庫內底有「<jisu1>」、「<jisu2>」chit 2-ê字詞，拼音kāng款是「<phengim_with_space>」，而且<jisu1> 使用者ê詞頻khah koân。
     When 08.輸入完整ê拼音字母（無空白）。
     Then 08.候選詞內底ē先出現字詞「<jisu1>」，chiah出現「<jisu2>」。

    Examples: 試驗範例
     | jisu1 | jisu2 | phengim_with_space |
     | 花 | 灰 | hoe |
     | 台灣 | 埋丸 | tai5 oan5 |


  Scenario Outline: 09.組合新詞組選字
    Given 09.Nā詞庫內底有「<jisu1>」、「<jisu2>」chit 2-ê字詞，拼音是「<phengim1_with_space>」、「<phengim2_with_space>」，而且無「<jisu1><jisu2>」chit-ê詞。
     When 09.輸入2-ê字詞chiap做伙完整ê拼音字母（無空白）。
     Then 09.候選詞內底有機會出現「<jisu1><jisu2>」chit-ê詞組。

    Examples: 試驗範例
     | jisu1 | jisu2 | phengim1_with_space | phengim2_with_space |
     | 火 | 車 | hoe2 | chhia2 |
     | 公視 | 台語台 | Kong si7 | Tai5 gi2 tai5 |


  Scenario Outline: 10.羅馬字頭字大寫輸入（透過字表設計）
    Given 10.Nā beh輸入「<jisu>」chit-ê字詞，拼音是「<phengim_with_space>」。
     When 10.輸入音節完整ê拼音字母（無空白），而且頭1-ê字母大寫，m̄-koh無全部大寫。
     Then 10.候選詞內底ē出現頭字大寫ê「<jisu>」chit-ê詞。

    Examples: 試驗範例
     | jisu | phengim_with_space |
     | Lí | Li2 |
     | Ko-hiông | Ko1 hiong5 |


  Scenario Outline: 11.羅馬字全部大寫輸入（透過字表設計）
    Given 11.Nā beh輸入「<jisu>」chit-ê字詞，拼音是「<phengim_with_space>」。
     When 11.輸入音節完整ê拼音字母（無空白），而且全部大寫。
     Then 11.候選詞內底ē出現全部大寫ê「<jisu>」chit-ê詞。

    Examples: 試驗範例
     | jisu | phengim_with_space |
     | LÍ | LI2 |
     | KO-HIÔNG | KO1 HIONG5 |


  Scenario Outline: 12.容允羅馬字輸入錯誤：Kā「ian」寫做「en」、kā「iat」寫做「et」。（包括頭字大寫kap全部大寫ê情形）
    Given 12.Nā beh輸入「<jisu>」chit-ê字詞，拼音是「<phengim_with_space>」，拼音內底ê字母結尾是「ian」a̍h是「iat」。
     When 12.輸入錯誤ê拼音字母（無空白），kā「ian」寫做「en」、a̍h是kā「iat」寫做「et」。
     Then 12.候選詞內底mā ē出現正確ê「<jisu>」chit-ê詞。

    Examples: 試驗範例（包括頭字大寫kap全部大寫ê情形）
     | jisu | phengim_with_space |
     | ian-chhiân | ian1 chhian5 |
     | Ián-chiān | Ian2 chian7 |
     | IÁN-CHIĀN | IAN2 CHIAN7 |
     | chiat-bo̍k | chiat4 bok8 |
     | Kiat-an | Kiat4 an1 |
     | KIAT-AN | KIAT4 AN1 |


  Scenario Outline: 13.容允羅馬字輸入錯誤：Kā「oa」寫做「ua」、kā「oe」寫做「ue」。（包括頭字大寫kap全部大寫ê情形）
    Given 13.Nā beh輸入「<jisu>」chit-ê字詞，拼音是「<phengim_with_space>」，拼音內底ê字母有出現是「oa」a̍h是「oe」。
     When 13.輸入錯誤ê拼音字母（無空白），kā「oa」寫做「ua」、a̍h是kā「oe」寫做「ue」。
     Then 13.候選詞內底mā ē出現正確ê「<jisu>」chit-ê詞。

    Examples: 試驗範例（包括頭字大寫kap全部大寫ê情形）
     | jisu | phengim_with_space |
     | oang | oang1 |
     | Oa̍t-lâm | Oat8 lam5 |
     | OA̍T-LÂM | OAT8 LAM5 |
     | kóng-ōe | kong2 oe7 |
     | Goe̍h-bâi | Goeh8 bai5 |
     | GOE̍H-BÂI | GOEH8 BAI5 |


  Scenario Outline: 14.容允教育部羅馬字輸入：Kā白話字「ch」寫做教育部羅馬字「ts」、kā白話字「chh」寫做教育部羅馬字「tsh」。（包括頭字大寫kap全部大寫ê情形）
    Given 14.Nā beh輸入「<jisu>」chit-ê字詞，拼音是「<phengim_with_space>」，拼音內底ê字母有出現是「ch」a̍h是「chh」。
     When 14.輸入教育部羅馬字ê拼音字母（無空白），kā白話字「ch」寫做教育部羅馬字「ts」、a̍h是kā白話字「chh」寫做教育部羅馬字「tsh」。
     Then 14.候選詞內底mā ē出現正確ê「<jisu>」chit-ê詞。

    Examples: 試驗範例（包括頭字大寫kap全部大寫ê情形）
     | jisu | phengim_with_space |
     | chhàu-chho | chhau3 chho1 |
     | Chúi-chhàn-nâ | Chui2 chhan3 na5 |
     | CHÚI-CHHÀN-NÂ | CHUI2 CHHAN3 NA5 |
     | chhiò-koa | chhio3 koa1 |
     | Chhàu-chúi-chng | Chhau3 chui2 chng1 |
     | CHHÀU-CHÚI-CHNG | CHHAU3 CHUI2 CHNG1 |


  Scenario Outline: 15.容允教育部羅馬字輸入：Kā白話字「eng」寫做教育部羅馬字「ing」、kā白話字「ek」寫做教育部羅馬字「ik」。（包括頭字大寫kap全部大寫ê情形）
    Given 15.Nā beh輸入「<jisu>」chit-ê字詞，拼音是「<phengim_with_space>」，拼音內底ê字母有出現是「eng」a̍h是「ek」。
     When 15.輸入教育部羅馬字ê拼音字母（無空白），kā白話字「eng」寫做教育部羅馬字「ing」、a̍h是kā白話字「ek」寫做教育部羅馬字「ik」。
     Then 15.候選詞內底mā ē出現正確ê「<jisu>」chit-ê詞。

    Examples: 試驗範例（包括頭字大寫kap全部大寫ê情形）
     | jisu | phengim_with_space |
     | thêng | theng5 |
     | Sêng-kong | Seng5 kong1 |
     | SÊNG-KONG | SENG5 KONG1 |
     | khek | khek4 |
     | Tek-kok | Tek4 kok4 |
     | TEK-KOK | TEK4 KOK4 |


  Scenario Outline: 16.容允舊ê輸入款式：Kā白話字ê「o͘」預設ê輸入「oo」phah做「ou」。（包括頭字大寫kap全部大寫ê情形）
    Given 16.Nā beh輸入「<jisu>」chit-ê字詞，拼音是「<phengim_with_space>」，拼音內底ê字母有出現是「oo」。
     When 16.輸入舊ê輸入款式ê拼音字母（無空白），kā「oo」phah做「ou」。
     Then 16.候選詞內底mā ē出現正確ê「<jisu>」chit-ê詞。

    Examples: 試驗範例（包括頭字大寫kap全部大寫ê情形）
     | jisu | phengim_with_space |
     | o͘-a | oo1 a1 |
     | O͘-ji̍t | Oo1 jit8 |
     | O͘-ji̍t | OO1 jit8 |
     | O͘-JI̍T | OO1 JIT8 |
     | tō͘ | too7 |
     | Saⁿ-têng-po͘ | Sann1 teng5 poo1 |
     | SAⁿ-TÊNG-PO͘ | SANN1 TENG5 POO1 |



  @skipscenario
  Scenario Outline: 21.任何拼音羅馬字（無tī字表內底mā ē-sái phah羅馬字）
    Given 21.Nā詞庫內底無「<jisu>」chit-ê字詞，拼音是「<phengim_with_space>」。
     When 21.輸入完整ê拼音字母（無空白）。
     Then 21.候選詞內底ē出現「<jisu>」chit-ê詞。

    Examples: 試驗範例
     | jisu | phengim_with_space |
     | chŏaⁿ | choann9 |
     | phiăng | phiang9 |
     | khiaih | khiaih4 |
     | chhoaih | chhoaih4 |
     | soàng | soang3 |
     | tu̍k | tuk8 |
