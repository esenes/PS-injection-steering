(* Content-type: application/vnd.wolfram.cdf.text *)

(*** Wolfram CDF File ***)
(* http://www.wolfram.com/cdf *)

(* CreatedBy='Mathematica 9.0' *)

(*************************************************************************)
(*                                                                       *)
(*  The Mathematica License under which this file was created prohibits  *)
(*  restricting third parties in receipt of this file from republishing  *)
(*  or redistributing it by any means, including but not limited to      *)
(*  rights management or terms of use, without the express consent of    *)
(*  Wolfram Research, Inc. For additional information concerning CDF     *)
(*  licensing and redistribution see:                                    *)
(*                                                                       *)
(*        www.wolfram.com/cdf/adopting-cdf/licensing-options.html        *)
(*                                                                       *)
(*************************************************************************)

(*CacheID: 234*)
(* Internal cache information:
NotebookFileLineBreakTest
NotebookFileLineBreakTest
NotebookDataPosition[      1063,         20]
NotebookDataLength[    643433,      12463]
NotebookOptionsPosition[    637012,      12229]
NotebookOutlinePosition[    637356,      12244]
CellTagsIndexPosition[    637313,      12241]
WindowFrame->Normal*)

(* Beginning of Notebook Content *)
Notebook[{

Cell[CellGroupData[{
Cell["Initializations", "Subtitle",
 Evaluatable->False,
 FontFamily->"Courier New",
 Background->GrayLevel[0.900008]],

Cell["\<\
These two commands turn off the spell checker, 
otherwise we get spurious messages like...\
\>", "Text",
 Evaluatable->False,
 FontFamily->"Courier New",
 Background->GrayLevel[0.900008]],

Cell[OutputFormData["\<\
Can't Format Cell













\
\>", "\<\
General::spell1: Possible spelling error: new symbol name \"llss\"
     is similar to existing symbol \"lsss\".\
\>"], "Message",
 PageWidth->Infinity,
 Evaluatable->False,
 FontFamily->"Courier New",
 FontSize->10,
 FontWeight->"Plain",
 FontSlant->"Plain",
 FontTracking->"Plain",
 FontVariations->{"Outline"->False,
 "Shadow"->False,
 "Underline"->False},
 FontColor->RGBColor[1, 0, 0],
 Background->GrayLevel[1]],

Cell[BoxData[{
 RowBox[{
  RowBox[{"Off", "[", 
   RowBox[{"General", "::", "\"\<spell\>\""}], "]"}], ";"}], "\n", 
 RowBox[{
  RowBox[{"Off", "[", 
   RowBox[{"General", "::", "\"\<spell1\>\""}], "]"}], ";"}]}], "Input",
 PageWidth->Infinity,
 FontFamily->"Courier New"],

Cell[BoxData[
 RowBox[{
  RowBox[{"$TextStyle", "=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"FontFamily", "\[Rule]", "\"\<Times\>\""}], ",", 
     RowBox[{"FontSize", "\[Rule]", "19"}]}], "}"}]}], ";"}]], "Input",
 FontFamily->"Courier New"],

Cell[BoxData[""], "Input",
 FontFamily->"Courier New"]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[StyleBox["Define functions for MAD data",
 FontColor->GrayLevel[0]]], "Title",
 Background->RGBColor[1, 1, 0]],

Cell[BoxData[" "], "Input",
 CellChangeTimes->{3.6327212635668683`*^9}],

Cell[CellGroupData[{

Cell[TextData[StyleBox["Extract the coordinates: X,Y",
 FontColor->GrayLevel[0]]], "Subtitle",
 CellChangeTimes->{{3.6053446581155024`*^9, 3.6053446618751745`*^9}, {
  3.6056377946897187`*^9, 3.6056377948457217`*^9}},
 Background->RGBColor[1, 1, 0]],

Cell[BoxData[{
 RowBox[{
  RowBox[{"Clear", "[", "GetXY", "]"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"GetXY", "[", "x_", "]"}], ":=", 
  RowBox[{"Module", "[", "\[IndentingNewLine]", 
   RowBox[{
    RowBox[{"{", "f", "}"}], ",", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{
      RowBox[{"f", "[", "y_", "]"}], ":=", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"y", "[", 
         RowBox[{"[", "1", "]"}], "]"}], ",", 
        RowBox[{"y", "[", 
         RowBox[{"[", "2", "]"}], "]"}]}], "}"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"f", "/@", "x"}]}]}], "\[IndentingNewLine]", "]"}]}]}], "Input",
 CellChangeTimes->{{3.6053446798623204`*^9, 3.6053447440575547`*^9}, {
  3.6053467519438696`*^9, 3.605346770633029*^9}, {3.605637117418295*^9, 
  3.605637127090481*^9}, {3.605637249989644*^9, 3.6056372501612473`*^9}, {
  3.605637294434899*^9, 3.6056373173205385`*^9}, {3.6056378011794434`*^9, 
  3.605637811694046*^9}, {3.6234759209610853`*^9, 3.623475925461175*^9}}]
}, Closed]],

Cell[CellGroupData[{

Cell[TextData[StyleBox["Rectellipse", "Subtitle",
 FontColor->GrayLevel[0]]], "Subtitle",
 Background->RGBColor[1, 1, 0]],

Cell[BoxData[
 RowBox[{
  RowBox[{"Rectellipse", "[", 
   RowBox[{
   "y_", ",", "APER1_", ",", "APER2_", ",", "APER3_", ",", "APER4_", ",", 
    "TILT_"}], "]"}], ":=", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"f", ",", "x", ",", "X"}], "}"}], ",", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"X", "=", 
      RowBox[{"APER3", "*", 
       RowBox[{"Sqrt", "[", 
        RowBox[{"1", "-", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"APER2", "/", "APER4"}], ")"}], "^", "2"}]}], "]"}]}]}], 
     ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"If", "[", 
      RowBox[{
       RowBox[{"APER1", ">=", "APER3"}], ",", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"X", "\[Element]", " ", "Reals"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{
            RowBox[{"f", "[", "x_", "]"}], ":=", " ", 
            RowBox[{"APER2", " ", "/;", " ", 
             RowBox[{
              RowBox[{"x", " ", "\[GreaterEqual]", " ", "0"}], "  ", "&&", 
              " ", 
              RowBox[{"x", " ", "\[LessEqual]", " ", "X"}]}]}]}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"f", "[", "x_", "]"}], ":=", " ", 
            RowBox[{
             RowBox[{"APER4", "*", 
              RowBox[{"Sqrt", "[", 
               RowBox[{"1", "-", 
                RowBox[{"x", "*", 
                 RowBox[{"x", "/", 
                  RowBox[{"(", 
                   RowBox[{"APER3", "*", "APER3"}], ")"}]}]}]}], "]"}]}], 
             "   ", "/;", " ", 
             RowBox[{
              RowBox[{"x", ">", "X"}], " ", "&&", " ", 
              RowBox[{"x", "\[LessEqual]", " ", "APER3"}]}]}]}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"f", "[", "x_", "]"}], ":=", 
            RowBox[{"0", " ", "/;", " ", 
             RowBox[{"x", ">", "APER3"}]}]}], ";", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"f", "[", "x_", "]"}], ":=", 
            RowBox[{
             RowBox[{"f", "[", 
              RowBox[{"-", "x"}], "]"}], " ", "/;", " ", 
             RowBox[{"x", "<", "0"}]}]}], ";"}], ",", "\[IndentingNewLine]", 
          "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{
            RowBox[{"f", "[", "x_", "]"}], ":=", " ", 
            RowBox[{
             RowBox[{"APER4", "*", 
              RowBox[{"Sqrt", "[", 
               RowBox[{"1", "-", 
                RowBox[{"x", "*", 
                 RowBox[{"x", "/", 
                  RowBox[{"(", 
                   RowBox[{"APER3", "*", "APER3"}], ")"}]}]}]}], "]"}]}], 
             "   ", "/;", " ", 
             RowBox[{
              RowBox[{"x", ">", "0"}], " ", "&&", " ", 
              RowBox[{"x", "\[LessEqual]", " ", "APER3"}]}]}]}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"f", "[", "x_", "]"}], ":=", 
            RowBox[{"0", " ", "/;", " ", 
             RowBox[{"x", ">", "APER3"}]}]}], ";", "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"f", "[", "x_", "]"}], ":=", 
            RowBox[{
             RowBox[{"f", "[", 
              RowBox[{"-", "x"}], "]"}], " ", "/;", " ", 
             RowBox[{"x", "<", "0"}]}]}], ";"}]}], "]"}], ";"}]}], 
      "\[IndentingNewLine]", "]"}], ";", "\[IndentingNewLine]", 
     "\[IndentingNewLine]", 
     RowBox[{"If", "[", 
      RowBox[{
       RowBox[{"APER1", "<", "APER3"}], ",", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"If", "[", 
         RowBox[{
          RowBox[{"X", "\[Element]", " ", "Reals"}], ",", 
          "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{"If", "[", 
            RowBox[{
             RowBox[{"X", "\[GreaterEqual]", " ", "APER1"}], ",", 
             "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{
               RowBox[{"f", "[", "x_", "]"}], ":=", " ", 
               RowBox[{"APER2", " ", "/;", " ", 
                RowBox[{
                 RowBox[{"x", " ", "\[GreaterEqual]", " ", "0"}], "  ", "&&", 
                 " ", 
                 RowBox[{"x", " ", "\[LessEqual]", " ", "APER1"}]}]}]}], ";", 
              "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"f", "[", "x_", "]"}], ":=", " ", 
               RowBox[{
                RowBox[{"10000", "*", "APER2", "*", 
                 RowBox[{"(", 
                  RowBox[{"APER1", "+", "0.0001", "-", "x"}], ")"}]}], "   ", 
                "/;", " ", 
                RowBox[{
                 RowBox[{"x", ">", "APER1"}], " ", "&&", " ", 
                 RowBox[{"x", "\[LessEqual]", " ", 
                  RowBox[{"APER1", "+", "0.0001"}]}]}]}]}], ";", 
              "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"f", "[", "x_", "]"}], ":=", 
               RowBox[{"0", " ", "/;", " ", 
                RowBox[{"x", ">", 
                 RowBox[{"APER1", "+", "0.0001"}]}]}]}], ";", 
              "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"f", "[", "x_", "]"}], ":=", 
               RowBox[{
                RowBox[{"f", "[", 
                 RowBox[{"-", "x"}], "]"}], " ", "/;", " ", 
                RowBox[{"x", "<", "0"}]}]}], ";"}], ",", 
             "\[IndentingNewLine]", "\[IndentingNewLine]", 
             RowBox[{
              RowBox[{
               RowBox[{"f", "[", "x_", "]"}], ":=", " ", 
               RowBox[{"APER2", " ", "/;", " ", 
                RowBox[{
                 RowBox[{"x", " ", "\[GreaterEqual]", " ", "0"}], "  ", "&&", 
                 " ", 
                 RowBox[{"x", " ", "\[LessEqual]", " ", "X"}]}]}]}], ";", 
              "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"f", "[", "x_", "]"}], ":=", " ", 
               RowBox[{
                RowBox[{"APER4", "*", 
                 RowBox[{"Sqrt", "[", 
                  RowBox[{"1", "-", 
                   RowBox[{"x", "*", 
                    RowBox[{"x", "/", 
                    RowBox[{"(", 
                    RowBox[{"APER3", "*", "APER3"}], ")"}]}]}]}], "]"}]}], 
                "   ", "/;", " ", 
                RowBox[{
                 RowBox[{"x", ">", "X"}], " ", "&&", " ", 
                 RowBox[{"x", "\[LessEqual]", " ", "APER1"}]}]}]}], ";", 
              "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"f", "[", "x_", "]"}], ":=", 
               RowBox[{
                RowBox[{"10000", "*", "APER4", "*", 
                 RowBox[{"Sqrt", "[", 
                  RowBox[{"1", "-", 
                   RowBox[{
                    RowBox[{"APER1", "^", "2"}], "/", 
                    RowBox[{"(", 
                    RowBox[{"APER3", "^", "2"}], ")"}]}]}], "]"}], "*", 
                 RowBox[{"(", 
                  RowBox[{"APER1", "+", "0.0001", "-", "x"}], ")"}]}], "    ",
                 "/;", " ", 
                RowBox[{
                 RowBox[{"x", ">", "APER1"}], " ", "&&", " ", 
                 RowBox[{"x", "\[LessEqual]", " ", 
                  RowBox[{"APER1", "+", "0.0001"}]}]}]}]}], ";", 
              "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"f", "[", "x_", "]"}], ":=", 
               RowBox[{"0", " ", "/;", " ", 
                RowBox[{"x", ">", 
                 RowBox[{"APER1", "+", "0.0001"}]}]}]}], ";", 
              "\[IndentingNewLine]", 
              RowBox[{
               RowBox[{"f", "[", "x_", "]"}], ":=", 
               RowBox[{
                RowBox[{"f", "[", 
                 RowBox[{"-", "x"}], "]"}], " ", "/;", " ", 
                RowBox[{"x", "<", "0"}]}]}], ";"}]}], "\[IndentingNewLine]", 
            "]"}], ";"}], ",", "\[IndentingNewLine]", "\[IndentingNewLine]", 
          RowBox[{
           RowBox[{
            RowBox[{"f", "[", "x_", "]"}], ":=", " ", 
            RowBox[{
             RowBox[{"APER4", "*", 
              RowBox[{"Sqrt", "[", 
               RowBox[{"1", "-", 
                RowBox[{"x", "*", 
                 RowBox[{"x", "/", 
                  RowBox[{"(", 
                   RowBox[{"APER3", "*", "APER3"}], ")"}]}]}]}], "]"}]}], 
             "   ", "/;", "  ", 
             RowBox[{
              RowBox[{"x", " ", "\[GreaterEqual]", " ", "0"}], "  ", "&&", 
              " ", 
              RowBox[{"x", "\[LessEqual]", " ", "APER1"}]}]}]}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"f", "[", "x_", "]"}], ":=", " ", 
            RowBox[{
             RowBox[{"10000", "*", "APER4", "*", 
              RowBox[{"Sqrt", "[", 
               RowBox[{"1", "-", 
                RowBox[{
                 RowBox[{"APER1", "^", "2"}], "/", 
                 RowBox[{"(", 
                  RowBox[{"APER3", "^", "2"}], ")"}]}]}], "]"}], "*", 
              RowBox[{"(", 
               RowBox[{"APER1", "+", "0.0001", "-", "x"}], ")"}]}], "    ", "/;",
              " ", 
             RowBox[{
              RowBox[{"x", ">", "APER1"}], " ", "&&", " ", 
              RowBox[{"x", "\[LessEqual]", " ", 
               RowBox[{"APER1", "+", "0.0001"}]}]}]}]}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"f", "[", "x_", "]"}], ":=", 
            RowBox[{"0", " ", "/;", " ", 
             RowBox[{"x", ">", 
              RowBox[{"APER1", "+", "0.0001"}]}]}]}], ";", 
           "\[IndentingNewLine]", 
           RowBox[{
            RowBox[{"f", "[", "x_", "]"}], ":=", 
            RowBox[{
             RowBox[{"f", "[", 
              RowBox[{"-", "x"}], "]"}], " ", "/;", " ", 
             RowBox[{"x", "<", "0"}]}]}], ";"}]}], "\[IndentingNewLine]", 
         "]"}], ";"}]}], "\[IndentingNewLine]", "]"}], ";", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"If", "[", 
      RowBox[{
       RowBox[{"TILT", "\[Equal]", "0"}], ",", 
       RowBox[{"{", 
        RowBox[{"y", ",", 
         RowBox[{"f", "[", "y", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{
          RowBox[{"y", "*", 
           RowBox[{"Cos", "[", "TILT", "]"}]}], "-", 
          RowBox[{
           RowBox[{"f", "[", "y", "]"}], "*", 
           RowBox[{"Sin", "[", "TILT", "]"}]}]}], ",", 
         RowBox[{
          RowBox[{"y", "*", 
           RowBox[{"Sin", "[", "TILT", "]"}]}], "+", 
          RowBox[{
           RowBox[{"f", "[", "y", "]"}], "*", 
           RowBox[{"Cos", "[", "TILT", "]"}]}]}]}], "}"}]}], "]"}]}]}], 
   "]"}]}]], "Input"]
}, Closed]],

Cell[CellGroupData[{

Cell[TextData[Cell[BoxData["RhombeCircle"], "Input",
 FontFamily->"Gill Sans MT",
 FontSize->24,
 FontWeight->"Plain",
 FontColor->GrayLevel[0]]], "Subtitle",
 Background->RGBColor[1, 1, 0]],

Cell[BoxData[
 RowBox[{
  RowBox[{"RhombeCircle", "[", 
   RowBox[{
   "y_", ",", "Hor_", ",", "Ver_", ",", "Rh_", ",", "Rv_", ",", "L_", ",", 
    " ", "TILT_"}], "]"}], ":=", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"f", ",", "x", ",", "h", ",", "v"}], "}"}], ",", 
    "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"If", "[", 
      RowBox[{
       RowBox[{"L", " ", "\[Equal]", "0"}], "  ", ",", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"h", "=", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"Hor", "-", 
            RowBox[{"2", "*", "Rh"}]}], ")"}], "/", "2"}]}], ";", " ", 
        StyleBox[
         RowBox[{"(*", " ", 
          RowBox[{
           RowBox[{"distance", " ", "from", " ", 
            RowBox[{"(", 
             RowBox[{"0", ",", "0"}], ")"}], " ", "to", " ", "centrum", " ", 
            "of", " ", "circle", " ", "on", " ", "x"}], "-", 
           RowBox[{"axis", " ", 
            RowBox[{"(", "hor", ")"}]}]}], " ", "*)"}],
         FontColor->RGBColor[0, 0, 1]], "\[IndentingNewLine]", 
        RowBox[{"v", "=", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"Ver", "-", 
            RowBox[{"2", "*", "Rv"}]}], ")"}], "/", "2"}]}], ";", " ", 
        StyleBox[
         RowBox[{"(*", " ", 
          RowBox[{
           RowBox[{"distance", " ", "from", " ", 
            RowBox[{"(", 
             RowBox[{"0", ",", "0"}], ")"}], " ", "to", " ", "centrum", " ", 
            "of", " ", "circle", " ", "on", " ", "y"}], "-", 
           RowBox[{"axis", " ", 
            RowBox[{"(", "ver", ")"}]}]}], " ", "*)"}],
         FontColor->RGBColor[0, 0, 1]], "\[IndentingNewLine]", 
        RowBox[{"sin1", "=", 
         FractionBox[
          RowBox[{
           RowBox[{"Rh", " ", "v"}], "-", 
           RowBox[{"Rv", " ", "v"}], "-", 
           SqrtBox[
            RowBox[{
             SuperscriptBox["h", "4"], "-", 
             RowBox[{
              SuperscriptBox["h", "2"], " ", 
              SuperscriptBox["Rh", "2"]}], "+", 
             RowBox[{"2", " ", 
              SuperscriptBox["h", "2"], " ", "Rh", " ", "Rv"}], "-", 
             RowBox[{
              SuperscriptBox["h", "2"], " ", 
              SuperscriptBox["Rv", "2"]}], "+", 
             RowBox[{
              SuperscriptBox["h", "2"], " ", 
              SuperscriptBox["v", "2"]}]}]]}], 
          RowBox[{
           SuperscriptBox["h", "2"], "+", 
           SuperscriptBox["v", "2"]}]]}], ";", "\[IndentingNewLine]", 
        RowBox[{"sin2", "=", 
         FractionBox[
          RowBox[{
           RowBox[{"Rh", " ", "v"}], "-", 
           RowBox[{"Rv", " ", "v"}], "+", 
           SqrtBox[
            RowBox[{
             SuperscriptBox["h", "4"], "-", 
             RowBox[{
              SuperscriptBox["h", "2"], " ", 
              SuperscriptBox["Rh", "2"]}], "+", 
             RowBox[{"2", " ", 
              SuperscriptBox["h", "2"], " ", "Rh", " ", "Rv"}], "-", 
             RowBox[{
              SuperscriptBox["h", "2"], " ", 
              SuperscriptBox["Rv", "2"]}], "+", 
             RowBox[{
              SuperscriptBox["h", "2"], " ", 
              SuperscriptBox["v", "2"]}]}]]}], 
          RowBox[{
           SuperscriptBox["h", "2"], "+", 
           SuperscriptBox["v", "2"]}]]}], ";", "\[IndentingNewLine]", 
        "\[IndentingNewLine]", 
        RowBox[{"sin", "=", 
         RowBox[{"If", "[", 
          RowBox[{
           RowBox[{"sin1", ">", "sin2"}], ",", 
           RowBox[{"sin1", "*", "1.0"}], ",", 
           RowBox[{"sin2", "*", "1.0"}]}], "]"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"cos", "=", 
         RowBox[{"Sqrt", "[", 
          RowBox[{"1", "-", 
           RowBox[{"sin", "^", "2"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
        RowBox[{"(*", " ", 
         RowBox[{
          RowBox[{"Print", "[", 
           RowBox[{
           "\"\<sin=\>\"", ",", "sin", ",", "\"\<   cos=\>\"", ",", "cos"}], 
           "]"}], ";"}], " ", "*)"}], "\[IndentingNewLine]", 
        "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"f", "[", "x_", "]"}], ":=", " ", 
         RowBox[{
          RowBox[{
           RowBox[{"Sqrt", "[", 
            RowBox[{
             RowBox[{"Rv", "^", "2"}], "-", 
             RowBox[{"x", "^", "2"}]}], "]"}], "+", "v"}], " ", "/;", " ", 
          RowBox[{
           RowBox[{"x", " ", "\[GreaterEqual]", " ", "0"}], " ", "&&", " ", 
           RowBox[{"x", " ", "\[LessEqual]", 
            RowBox[{"Rv", "*", "cos"}]}]}]}]}], " ", ";", 
        RowBox[{
         RowBox[{"f", "[", "x_", "]"}], ":=", " ", 
         RowBox[{
          RowBox[{
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"Rh", "-", "Rv"}], ")"}], "*", "sin"}], "-", "v"}], 
               ")"}], "/", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{
                 RowBox[{"(", 
                  RowBox[{"Rh", "-", "Rv"}], ")"}], "*", "cos"}], "+", "h"}], 
               ")"}]}], ")"}], "*", 
            RowBox[{"(", 
             RowBox[{"x", "-", 
              RowBox[{"Rh", "*", "cos"}], "-", "h"}], ")"}]}], "+", " ", 
           RowBox[{"Rh", "*", "sin"}]}], " ", "/;", " ", 
          RowBox[{
           RowBox[{"x", ">", 
            RowBox[{"Rh", "*", "cos"}]}], " ", "&&", " ", 
           RowBox[{"x", "\[LessEqual]", " ", 
            RowBox[{
             RowBox[{"Rh", "*", "cos"}], "+", "h"}]}]}]}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"f", "[", "x_", "]"}], ":=", " ", 
         RowBox[{
          RowBox[{"Sqrt", "[", 
           RowBox[{
            RowBox[{"Rh", "^", "2"}], "-", 
            RowBox[{
             RowBox[{"(", 
              RowBox[{"x", "-", "h"}], ")"}], "^", "2"}]}], "]"}], " ", "/;", 
          " ", 
          RowBox[{
           RowBox[{"x", "\[GreaterEqual]", " ", 
            RowBox[{
             RowBox[{"Rh", "*", "cos"}], "+", "h"}]}], " ", "&&", " ", 
           RowBox[{"x", " ", "\[LessEqual]", " ", 
            RowBox[{"Hor", "/", "2"}]}]}]}]}], ";", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"f", "[", "x_", "]"}], ":=", 
         RowBox[{"0", " ", "/;", " ", 
          RowBox[{"x", ">", 
           RowBox[{"Hor", "/", "2"}]}]}]}], ";"}], "\[IndentingNewLine]", ",",
        "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{
         RowBox[{"yL", "[", "x_", "]"}], "=", 
         RowBox[{
          RowBox[{"-", "1"}], "*", 
          RowBox[{"(", 
           RowBox[{"x", "-", 
            RowBox[{
             FractionBox["1", "2"], 
             SqrtBox[
              RowBox[{"2", "*", 
               SuperscriptBox["L", "2"]}]]}]}], ")"}]}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"yH", "[", "x_", "]"}], "=", 
         SqrtBox[
          RowBox[{
           RowBox[{"Rh", "^", "2"}], "-", 
           RowBox[{
            RowBox[{"(", 
             RowBox[{"x", "-", 
              RowBox[{"(", 
               RowBox[{
                RowBox[{"Hor", "/", "2"}], "-", "Rh"}], ")"}]}], ")"}], "^", 
            "2"}]}]]}], ";", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"yV", "[", "x_", "]"}], "=", 
         RowBox[{
          SqrtBox[
           RowBox[{
            RowBox[{"Rv", "^", "2"}], "-", 
            RowBox[{"x", "^", "2"}]}]], "+", 
          RowBox[{"Ver", "/", "2"}], "-", "Rv"}]}], ";", 
        "\[IndentingNewLine]", "\[IndentingNewLine]", 
        RowBox[{"Off", "[", 
         RowBox[{"FindMinimum", "::", "\"\<lstol\>\""}], "]"}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"solV", "=", 
         RowBox[{"FindMinimum", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"yL", "[", "x", "]"}], "-", 
              RowBox[{"yV", "[", "x", "]"}]}], ")"}], "*", 
            RowBox[{"Conjugate", "[", 
             RowBox[{
              RowBox[{"yL", "[", "x", "]"}], "-", 
              RowBox[{"yV", "[", "x", "]"}]}], "]"}]}], ",", 
           RowBox[{"{", 
            RowBox[{"x", ",", "0"}], "}"}]}], "]"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"solH", "=", 
         RowBox[{"FindMinimum", "[", 
          RowBox[{
           RowBox[{
            RowBox[{"(", 
             RowBox[{
              RowBox[{"yL", "[", "x", "]"}], "-", 
              RowBox[{"yH", "[", "x", "]"}]}], ")"}], "*", 
            RowBox[{"Conjugate", "[", 
             RowBox[{
              RowBox[{"yL", "[", "x", "]"}], "-", 
              RowBox[{"yH", "[", "x", "]"}]}], "]"}]}], ",", " ", 
           RowBox[{"{", 
            RowBox[{"x", ",", 
             RowBox[{"Hor", "/", "2"}]}], "}"}]}], "]"}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"On", "[", 
         RowBox[{"FindMinimum", "::", "\"\<lstol\>\""}], "]"}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"(*", " ", 
         RowBox[{
          RowBox[{"Print", "[", 
           RowBox[{
           "\"\<solH=\>\"", ",", "solH", ",", "\"\<   solV=\>\"", ",", 
            "solV"}], "]"}], ";"}], " ", "*)"}], "\[IndentingNewLine]", 
        "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"f", "[", "x_", "]"}], ":=", 
         RowBox[{
          RowBox[{"yV", "[", "x", "]"}], "/;", 
          RowBox[{
           RowBox[{"x", " ", ">", "0"}], " ", "&&", " ", 
           RowBox[{"x", "<", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"solV", "[", 
               RowBox[{"[", "2", "]"}], "]"}], "[", 
              RowBox[{"[", "1", "]"}], "]"}], "[", 
             RowBox[{"[", "2", "]"}], "]"}]}]}]}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"f", "[", "x_", "]"}], ":=", 
         RowBox[{
          RowBox[{"yL", "[", "x", "]"}], "/;", 
          RowBox[{
           RowBox[{"x", " ", ">", 
            RowBox[{
             RowBox[{
              RowBox[{"solV", "[", 
               RowBox[{"[", "2", "]"}], "]"}], "[", 
              RowBox[{"[", "1", "]"}], "]"}], "[", 
             RowBox[{"[", "2", "]"}], "]"}]}], "  ", "&&", " ", 
           RowBox[{"x", " ", "\[LessEqual]", " ", 
            RowBox[{
             RowBox[{
              RowBox[{"solH", "[", 
               RowBox[{"[", "2", "]"}], "]"}], "[", 
              RowBox[{"[", "1", "]"}], "]"}], "[", 
             RowBox[{"[", "2", "]"}], "]"}]}]}]}]}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"f", "[", "x_", "]"}], ":=", 
         RowBox[{
          RowBox[{"yH", "[", "x", "]"}], "/;", 
          RowBox[{
           RowBox[{"x", " ", ">", "   ", 
            RowBox[{
             RowBox[{
              RowBox[{"solH", "[", 
               RowBox[{"[", "2", "]"}], "]"}], "[", 
              RowBox[{"[", "1", "]"}], "]"}], "[", 
             RowBox[{"[", "2", "]"}], "]"}]}], "  ", "&&", " ", 
           RowBox[{"x", " ", "\[LessEqual]", " ", 
            RowBox[{"Hor", "/", "2"}]}]}]}]}], ";", "\[IndentingNewLine]", 
        RowBox[{
         RowBox[{"f", "[", "x_", "]"}], ":=", 
         RowBox[{"0", " ", "/;", " ", 
          RowBox[{"x", ">", 
           RowBox[{"Hor", "/", "2"}]}]}]}], ";"}]}], "\[IndentingNewLine]", 
      "]"}], ";", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"f", "[", "x_", "]"}], ":=", 
      RowBox[{
       RowBox[{"f", "[", 
        RowBox[{"-", "x"}], "]"}], " ", "/;", " ", 
       RowBox[{"x", "<", "0"}]}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"If", "[", 
      RowBox[{
       RowBox[{"TILT", "\[Equal]", "0"}], ",", 
       RowBox[{"{", 
        RowBox[{"y", ",", 
         RowBox[{"f", "[", "y", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{
          RowBox[{"y", "*", 
           RowBox[{"Cos", "[", "TILT", "]"}]}], "-", 
          RowBox[{
           RowBox[{"f", "[", "y", "]"}], "*", 
           RowBox[{"Sin", "[", "TILT", "]"}]}]}], ",", 
         RowBox[{
          RowBox[{"y", "*", 
           RowBox[{"Sin", "[", "TILT", "]"}]}], "+", 
          RowBox[{
           RowBox[{"f", "[", "y", "]"}], "*", 
           RowBox[{"Cos", "[", "TILT", "]"}]}]}]}], "}"}]}], "]"}]}]}], 
   "]"}]}]], "Input"]
}, Closed]],

Cell[CellGroupData[{

Cell[TextData[Cell[BoxData["Diamond"], "Input"]], "Subtitle",
 Background->RGBColor[1, 1, 0]],

Cell[BoxData[
 RowBox[{
  RowBox[{"Diamond", "[", 
   RowBox[{"y_", ",", "Hor_", ",", "Ver_", ",", "TILT_"}], "]"}], ":=", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"f", ",", "x"}], "}"}], ",", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{
      RowBox[{"f", "[", "x_", "]"}], ":=", " ", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"-", "Ver"}], "/", "Hor"}], ")"}], "*", "x"}], "+", 
        RowBox[{"Ver", "/", "2"}]}], "    ", "/;", " ", 
       RowBox[{
        RowBox[{"x", " ", "\[GreaterEqual]", " ", "0"}], " ", "&&", "  ", 
        RowBox[{"x", "\[LessEqual]", " ", 
         RowBox[{"Hor", "/", "2"}]}]}]}]}], ";", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"f", "[", "x_", "]"}], ":=", 
      RowBox[{"0", " ", "/;", " ", 
       RowBox[{"x", ">", 
        RowBox[{"Hor", "/", "2"}]}]}]}], ";", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"f", "[", "x_", "]"}], ":=", 
      RowBox[{
       RowBox[{"f", "[", 
        RowBox[{"-", "x"}], "]"}], " ", "/;", " ", 
       RowBox[{"x", "<", "0"}]}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"If", "[", 
      RowBox[{
       RowBox[{"TILT", "\[Equal]", "0"}], ",", 
       RowBox[{"{", 
        RowBox[{"y", ",", 
         RowBox[{"f", "[", "y", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{
          RowBox[{"y", "*", 
           RowBox[{"Cos", "[", "TILT", "]"}]}], "-", 
          RowBox[{
           RowBox[{"f", "[", "y", "]"}], "*", 
           RowBox[{"Sin", "[", "TILT", "]"}]}]}], ",", 
         RowBox[{
          RowBox[{"y", "*", 
           RowBox[{"Sin", "[", "TILT", "]"}]}], "+", 
          RowBox[{
           RowBox[{"f", "[", "y", "]"}], "*", 
           RowBox[{"Cos", "[", "TILT", "]"}]}]}]}], "}"}]}], "]"}]}]}], 
   "]"}]}]], "Input"],

Cell[CellGroupData[{

Cell[TextData[Cell[BoxData["Ellipse"], "Input"]], "Section",
 Background->RGBColor[1, 1, 0]],

Cell[BoxData[
 RowBox[{
  RowBox[{"Ellipse", "[", 
   RowBox[{"y_", ",", "Hor_", ",", "Ver_", ",", "TILT_"}], "]"}], ":=", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"f", ",", "x"}], "}"}], ",", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{
      RowBox[{"f", "[", "x_", "]"}], ":=", " ", 
      RowBox[{
       RowBox[{
        RowBox[{"(", 
         RowBox[{"Ver", "/", "2"}], ")"}], "*", 
        RowBox[{"Sqrt", "[", 
         RowBox[{"1", "-", 
          RowBox[{"x", "*", 
           RowBox[{"x", "/", 
            RowBox[{"(", 
             RowBox[{"Hor", "*", 
              RowBox[{"Hor", "/", "4"}]}], ")"}]}]}]}], "]"}]}], "    ", "/;",
        " ", 
       RowBox[{
        RowBox[{"x", " ", "\[GreaterEqual]", " ", "0"}], " ", "&&", "  ", 
        RowBox[{"x", "\[LessEqual]", " ", 
         RowBox[{"Hor", "/", "2"}]}]}]}]}], ";", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"f", "[", "x_", "]"}], ":=", 
      RowBox[{"0", " ", "/;", " ", 
       RowBox[{"x", ">", 
        RowBox[{"Hor", "/", "2"}]}]}]}], ";", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"f", "[", "x_", "]"}], ":=", 
      RowBox[{
       RowBox[{"f", "[", 
        RowBox[{"-", "x"}], "]"}], " ", "/;", " ", 
       RowBox[{"x", "<", "0"}]}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"If", "[", 
      RowBox[{
       RowBox[{"TILT", "\[Equal]", "0"}], ",", 
       RowBox[{"{", 
        RowBox[{"y", ",", 
         RowBox[{"f", "[", "y", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{
          RowBox[{"y", "*", 
           RowBox[{"Cos", "[", "TILT", "]"}]}], "-", 
          RowBox[{
           RowBox[{"f", "[", "y", "]"}], "*", 
           RowBox[{"Sin", "[", "TILT", "]"}]}]}], ",", 
         RowBox[{
          RowBox[{"y", "*", 
           RowBox[{"Sin", "[", "TILT", "]"}]}], "+", 
          RowBox[{
           RowBox[{"f", "[", "y", "]"}], "*", 
           RowBox[{"Cos", "[", "TILT", "]"}]}]}]}], "}"}]}], "]"}]}]}], 
   "]"}]}]], "Input"]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[Cell[BoxData["Racetrack"], "Input"]], "Section",
 Background->RGBColor[1, 1, 0]],

Cell[BoxData[
 RowBox[{
  RowBox[{"Racetrack", "[", 
   RowBox[{"y_", ",", "Hor_", ",", "Ver_", ",", "R_", ",", "TILT_"}], "]"}], ":=", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"f", ",", "x"}], "}"}], ",", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{
      RowBox[{"f", "[", "x_", "]"}], ":=", " ", 
      RowBox[{
       RowBox[{"Ver", "/", "2"}], "    ", "/;", " ", 
       RowBox[{
        RowBox[{"x", " ", "\[GreaterEqual]", " ", "0"}], " ", "&&", "  ", 
        RowBox[{"x", "\[LessEqual]", " ", 
         RowBox[{
          RowBox[{"Hor", "/", "2"}], "-", "R"}]}]}]}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"f", "[", "x_", "]"}], ":=", 
      RowBox[{
       RowBox[{"Sqrt", "[", 
        RowBox[{
         RowBox[{"R", "^", "2"}], "-", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"x", "-", 
            RowBox[{"Hor", "/", "2"}], "+", "R"}], ")"}], "^", "2"}]}], "]"}],
        " ", "/;", " ", 
       RowBox[{
        RowBox[{"x", ">", " ", 
         RowBox[{
          RowBox[{"Hor", "/", "2"}], "-", "R"}]}], " ", "&&", " ", 
        RowBox[{"x", " ", "\[LessEqual]", " ", 
         RowBox[{"Hor", "/", "2"}]}]}]}]}], ";", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"f", "[", "x_", "]"}], ":=", 
      RowBox[{"0", " ", "/;", " ", 
       RowBox[{"x", ">", 
        RowBox[{"Hor", "/", "2"}]}]}]}], ";", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"f", "[", "x_", "]"}], ":=", 
      RowBox[{
       RowBox[{"f", "[", 
        RowBox[{"-", "x"}], "]"}], " ", "/;", " ", 
       RowBox[{"x", "<", "0"}]}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"If", "[", 
      RowBox[{
       RowBox[{"TILT", "\[Equal]", "0"}], ",", 
       RowBox[{"{", 
        RowBox[{"y", ",", 
         RowBox[{"f", "[", "y", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{
          RowBox[{"y", "*", 
           RowBox[{"Cos", "[", "TILT", "]"}]}], "-", 
          RowBox[{
           RowBox[{"f", "[", "y", "]"}], "*", 
           RowBox[{"Sin", "[", "TILT", "]"}]}]}], ",", 
         RowBox[{
          RowBox[{"y", "*", 
           RowBox[{"Sin", "[", "TILT", "]"}]}], "+", 
          RowBox[{
           RowBox[{"f", "[", "y", "]"}], "*", 
           RowBox[{"Cos", "[", "TILT", "]"}]}]}]}], "}"}]}], "]"}]}]}], 
   "]"}]}]], "Input"]
}, Closed]]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[Cell[BoxData["PStype"], "Input",
 FontFamily->"Gill Sans MT",
 FontSize->24,
 FontWeight->"Plain",
 FontColor->GrayLevel[0]]], "Subtitle",
 Background->RGBColor[1, 1, 0]],

Cell[BoxData[
 RowBox[{
  RowBox[{"PStype", "[", 
   RowBox[{
   "y_", ",", "HorEx_", ",", "HorIn_", ",", "Ver_", ",", "offset_", ",", 
    "RExLarge_", ",", "RExSmall_", ",", "RInLarge_", ",", "RInSmall_", ",", 
    "TILT_"}], "]"}], ":=", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "f", ",", "x", ",", "CExLarge", ",", "CExSmall", ",", "CInLarge", ",", 
      "CInSmall", ",", "yExL", ",", "yExS", ",", "yInL", ",", "yInS", ",", 
      "EX", ",", "IN", ",", "TestR", ",", "offsetRay"}], "}"}], ",", 
    "\[IndentingNewLine]", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"If", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"TestR", "[", 
         RowBox[{"RExSmall", ",", "RExLarge"}], "]"}], "<", "0"}], ",", 
       RowBox[{
        RowBox[{"Return", "[", 
         RowBox[{"-", "1"}], "]"}], ";"}]}], "]"}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"If", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"TestR", "[", 
         RowBox[{"RInSmall", ",", "RInLarge"}], "]"}], "<", "0"}], ",", 
       RowBox[{
        RowBox[{"Return", "[", 
         RowBox[{"-", "1"}], "]"}], ";"}]}], "]"}], ";", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"offsetRay", "=", 
      RowBox[{"offset", "-", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"HorEx", "-", "HorIn"}], ")"}], "/", "2."}]}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"CExLarge", "   ", "=", " ", 
      RowBox[{"{", 
       RowBox[{"offsetRay", ",", " ", 
        RowBox[{"Ver", "-", "RExLarge"}]}], " ", "}"}]}], ";", 
     "                     ", 
     StyleBox[
      RowBox[{"(*", "  ", 
       RowBox[{"[", "mm", "]"}], "   ", "*)"}],
      FontColor->RGBColor[0, 0, 1]], "\[IndentingNewLine]", 
     RowBox[{"CExSmall", "   ", "=", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"offsetRay", "+", "HorEx", "-", "RExSmall"}], ",", " ", 
        "0.0"}], "}"}]}], ";", "      ", 
     StyleBox[
      RowBox[{"(*", "  ", 
       RowBox[{"[", "mm", "]"}], "   ", "*)"}],
      FontColor->RGBColor[0, 0, 1]], "\[IndentingNewLine]", 
     RowBox[{"CInLarge", "   ", "=", " ", 
      RowBox[{"{", 
       RowBox[{"offsetRay", ",", " ", 
        RowBox[{"Ver", "-", "RInLarge"}]}], " ", "}"}]}], ";", 
     "                     ", 
     StyleBox[
      RowBox[{"(*", "  ", 
       RowBox[{"[", "mm", "]"}], "   ", "*)"}],
      FontColor->RGBColor[0, 0, 1]], "\[IndentingNewLine]", 
     RowBox[{"CInSmall", "   ", "=", " ", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"offsetRay", "+", "RInSmall", "-", "HorIn"}], ",", " ", 
        "0.0"}], "}"}]}], ";", "       ", 
     StyleBox[
      RowBox[{"(*", "  ", 
       RowBox[{"[", "mm", "]"}], "   ", "*)"}],
      FontColor->RGBColor[0, 0, 1]], "\[IndentingNewLine]", 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"yExL", "[", "x_", "]"}], "=", 
      RowBox[{
       SqrtBox[
        RowBox[{
         RowBox[{"RExLarge", "^", "2"}], "-", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"x", "-", 
            RowBox[{"CExLarge", "[", 
             RowBox[{"[", "1", "]"}], "]"}]}], ")"}], "^", "2"}]}]], "+", 
       RowBox[{"CExLarge", "[", 
        RowBox[{"[", "2", "]"}], "]"}]}]}], ";", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"yExS", "[", "x_", "]"}], "=", 
      RowBox[{
       SqrtBox[
        RowBox[{
         RowBox[{"RExSmall", "^", "2"}], "-", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"x", "-", 
            RowBox[{"CExSmall", "[", 
             RowBox[{"[", "1", "]"}], "]"}]}], ")"}], "^", "2"}]}]], "+", 
       RowBox[{"CExSmall", "[", 
        RowBox[{"[", "2", "]"}], "]"}]}]}], ";", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"yInL", "[", "x_", "]"}], "=", 
      RowBox[{
       SqrtBox[
        RowBox[{
         RowBox[{"RInLarge", "^", "2"}], "-", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"x", "-", 
            RowBox[{"CInLarge", "[", 
             RowBox[{"[", "1", "]"}], "]"}]}], ")"}], "^", "2"}]}]], "+", 
       RowBox[{"CInLarge", "[", 
        RowBox[{"[", "2", "]"}], "]"}]}]}], ";", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"yInS", "[", "x_", "]"}], "=", 
      RowBox[{
       SqrtBox[
        RowBox[{
         RowBox[{"RInSmall", "^", "2"}], "-", 
         RowBox[{
          RowBox[{"(", 
           RowBox[{"x", "-", 
            RowBox[{"CInSmall", "[", 
             RowBox[{"[", "1", "]"}], "]"}]}], ")"}], "^", "2"}]}]], "+", 
       RowBox[{"CInSmall", "[", 
        RowBox[{"[", "2", "]"}], "]"}]}]}], ";", "\[IndentingNewLine]", 
     "\[IndentingNewLine]", 
     RowBox[{"Off", "[", 
      RowBox[{"FindMinimum", "::", "\"\<lstol\>\""}], "]"}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"EX", "=", 
      RowBox[{"FindMinimum", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"yExL", "[", "x", "]"}], "-", 
           RowBox[{"yExS", "[", "x", "]"}]}], ")"}], "*", 
         RowBox[{"Conjugate", "[", 
          RowBox[{
           RowBox[{"yExL", "[", "x", "]"}], "-", 
           RowBox[{"yExS", "[", "x", "]"}]}], "]"}]}], ",", 
        RowBox[{"{", 
         RowBox[{"x", ",", 
          RowBox[{"offsetRay", "+", "HorEx", "-", 
           RowBox[{"RExSmall", "/", "2."}]}]}], "}"}]}], "]"}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"IN", "=", 
      RowBox[{"FindMinimum", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"(", 
          RowBox[{
           RowBox[{"yInL", "[", "x", "]"}], "-", 
           RowBox[{"yInS", "[", "x", "]"}]}], ")"}], "*", 
         RowBox[{"Conjugate", "[", 
          RowBox[{
           RowBox[{"yInL", "[", "x", "]"}], "-", 
           RowBox[{"yInS", "[", "x", "]"}]}], "]"}]}], ",", " ", 
        RowBox[{"{", 
         RowBox[{"x", ",", 
          RowBox[{"offsetRay", "+", 
           RowBox[{"RInSmall", "/", "2"}], "-", "HorIn"}]}], "}"}]}], "]"}]}],
      ";", "\[IndentingNewLine]", 
     RowBox[{"On", "[", 
      RowBox[{"FindMinimum", "::", "\"\<lstol\>\""}], "]"}], ";", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"If", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"EX", "[", 
         RowBox[{"[", "1", "]"}], "]"}], ">", "5.0"}], " ", 
       RowBox[{"(*", " ", "mm", " ", "*)"}], ",", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"Print", "[", "\"\<PStype. Error. \>\"", "]"}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"Print", "[", 
         RowBox[{"\"\<Cannot find intersection between: yExL[x]=\>\"", ",", 
          RowBox[{"yExL", "[", "x", "]"}], ",", "\"\< and yExS[x]=\>\"", ",", 
          RowBox[{"yExS", "[", "x", "]"}]}], "]"}], ";", 
        RowBox[{"Print", "[", 
         RowBox[{
         "\"\<  RExSmall=\>\"", ",", "RExSmall", ",", "\"\< RExLarge=\>\"", 
          ",", "RExLarge"}], "]"}], ";", "\[IndentingNewLine]", 
        RowBox[{"Return", "[", 
         RowBox[{"-", "1"}], "]"}], ";"}]}], "\[IndentingNewLine]", "]"}], 
     ";", "\[IndentingNewLine]", 
     RowBox[{"If", "[", 
      RowBox[{
       RowBox[{
        RowBox[{"IN", "[", 
         RowBox[{"[", "1", "]"}], "]"}], ">", "3.0"}], " ", 
       RowBox[{"(*", " ", "mm", " ", "*)"}], ",", "\[IndentingNewLine]", 
       RowBox[{
        RowBox[{"Print", "[", "\"\<PStype. Error. \>\"", "]"}], ";", 
        "\[IndentingNewLine]", 
        RowBox[{"Print", "[", 
         RowBox[{"\"\<Cannot find intersection between: yInL[x]=\>\"", ",", 
          RowBox[{"yInL", "[", "x", "]"}], ",", "\"\< and yInS[x]=\>\"", ",", 
          RowBox[{"yInS", "[", "x", "]"}]}], "]"}], ";", 
        RowBox[{"Print", "[", 
         RowBox[{
         "\"\< RInSmall=\>\"", ",", "RInSmall", ",", "\"\< RInLarge=\>\"", 
          ",", "RInLarge"}], "]"}], ";", "\[IndentingNewLine]", 
        RowBox[{"Return", "[", 
         RowBox[{"-", "1"}], "]"}], ";"}]}], "\[IndentingNewLine]", "]"}], 
     ";", "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"f", "[", "x_", "]"}], ":=", 
      RowBox[{"0", "/;", " ", 
       RowBox[{"x", " ", ">", " ", 
        RowBox[{"HorEx", "+", "offsetRay"}]}]}]}], ";", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"f", "[", "x_", "]"}], ":=", 
      RowBox[{
       RowBox[{"yExS", "[", "x", "]"}], "/;", 
       RowBox[{
        RowBox[{"x", " ", ">", " ", 
         RowBox[{
          RowBox[{
           RowBox[{"EX", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "[", 
           RowBox[{"[", "1", "]"}], "]"}], "[", 
          RowBox[{"[", "2", "]"}], "]"}]}], " ", "&&", " ", 
        RowBox[{"x", " ", "\[LessEqual]", "  ", 
         RowBox[{"HorEx", "+", "offsetRay"}]}]}]}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"f", "[", "x_", "]"}], ":=", 
      RowBox[{
       RowBox[{"yExL", "[", "x", "]"}], "/;", 
       RowBox[{
        RowBox[{"x", " ", ">", "offsetRay"}], " ", "&&", " ", 
        RowBox[{"x", " ", "\[LessEqual]", " ", 
         RowBox[{
          RowBox[{
           RowBox[{"EX", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "[", 
           RowBox[{"[", "1", "]"}], "]"}], "[", 
          RowBox[{"[", "2", "]"}], "]"}]}]}]}]}], ";", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"f", "[", "x_", "]"}], ":=", 
      RowBox[{
       RowBox[{"yInL", "[", "x", "]"}], "/;", 
       RowBox[{
        RowBox[{"x", " ", ">", " ", 
         RowBox[{
          RowBox[{
           RowBox[{"IN", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "[", 
           RowBox[{"[", "1", "]"}], "]"}], "[", 
          RowBox[{"[", "2", "]"}], "]"}]}], " ", "&&", " ", 
        RowBox[{"x", " ", "\[LessEqual]", " ", "offsetRay"}]}]}]}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"f", "[", "x_", "]"}], ":=", 
      RowBox[{
       RowBox[{"yInS", "[", "x", "]"}], "/;", 
       RowBox[{
        RowBox[{"x", " ", ">", " ", 
         RowBox[{
          RowBox[{"-", "HorIn"}], "+", "offsetRay"}]}], " ", "&&", " ", 
        RowBox[{"x", " ", "\[LessEqual]", 
         RowBox[{
          RowBox[{
           RowBox[{"IN", "[", 
            RowBox[{"[", "2", "]"}], "]"}], "[", 
           RowBox[{"[", "1", "]"}], "]"}], "[", 
          RowBox[{"[", "2", "]"}], "]"}]}]}]}]}], ";", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"f", "[", "x_", "]"}], ":=", 
      RowBox[{"0", "/;", " ", 
       RowBox[{"x", " ", "\[LessEqual]", 
        RowBox[{
         RowBox[{"-", "HorIn"}], "+", "offsetRay"}]}]}]}], ";", " ", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"If", "[", 
      RowBox[{
       RowBox[{"TILT", "\[Equal]", "0"}], ",", 
       RowBox[{"{", 
        RowBox[{"y", ",", 
         RowBox[{"f", "[", "y", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{
          RowBox[{"y", "*", 
           RowBox[{"Cos", "[", "TILT", "]"}]}], "-", 
          RowBox[{
           RowBox[{"f", "[", "y", "]"}], "*", 
           RowBox[{"Sin", "[", "TILT", "]"}]}]}], ",", 
         RowBox[{
          RowBox[{"y", "*", 
           RowBox[{"Sin", "[", "TILT", "]"}]}], "+", 
          RowBox[{
           RowBox[{"f", "[", "y", "]"}], "*", 
           RowBox[{"Cos", "[", "TILT", "]"}]}]}]}], "}"}]}], "]"}]}]}], 
   "]"}]}]], "Input",
 CellChangeTimes->{{3.6327254774159546`*^9, 3.6327254783979774`*^9}, {
  3.6327255293309975`*^9, 3.6327255306110234`*^9}, {3.6327256577445745`*^9, 
  3.632725661808675*^9}}]
}, Closed]]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[StyleBox["Get  APERTURE_Points file",
 FontColor->GrayLevel[0]]], "Title",
 CellChangeTimes->{{3.496374734535734*^9, 3.4963747405356956`*^9}, {
   3.4963936361647625`*^9, 3.496393636321012*^9}, {3.496393666961441*^9, 
   3.496393679164488*^9}, {3.496470149404563*^9, 3.496470183076223*^9}, {
   3.520161272116864*^9, 3.520161286365679*^9}, 3.6053439373064137`*^9, {
   3.605442764608918*^9, 3.6054427655761366`*^9}, {3.605500595662073*^9, 
   3.6055005958336763`*^9}, {3.6056367730729856`*^9, 
   3.6056367743391128`*^9}, {3.606207166252028*^9, 3.606207166829239*^9}, {
   3.606207732767044*^9, 3.606207733375456*^9}, {3.6089803778063817`*^9, 
   3.6089804104890103`*^9}, 3.609137412887022*^9, {3.60914709067869*^9, 
   3.609147152395059*^9}, {3.6144255915473413`*^9, 3.61442560651794*^9}, {
   3.623485797312948*^9, 3.623485811587223*^9}, {3.6326406000977507`*^9, 
   3.6326406023877964`*^9}, {3.652780318718308*^9, 3.6527803506209216`*^9}},
 Background->RGBColor[1., 0., 1.]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"fileBEND", "=", 
  RowBox[{"Import", "[", 
   RowBox[{
   "\"\<\\\\\\\\cern.ch\\\\dfs\\\\Users\\\\b\\\\berrig\\\\Public\\\\For_\
Mataguez\\\\APERTURE_Points\>\"", ",", "\"\<Table\>\""}], "]"}]}]], "Input",
 CellChangeTimes->{{3.6144254052118826`*^9, 3.614425423962633*^9}, {
   3.6144254845070553`*^9, 3.614425518100401*^9}, {3.614426682687021*^9, 
   3.6144266921573997`*^9}, {3.6145149713466434`*^9, 3.614514996915371*^9}, 
   3.6145150459311996`*^9, {3.6145180849444256`*^9, 3.614518095943342*^9}, {
   3.6155445803754845`*^9, 3.615544615816512*^9}, {3.6155489472642565`*^9, 
   3.615548949630392*^9}, {3.6234760125209236`*^9, 3.623476019891071*^9}, 
   3.623476070070114*^9, {3.6234762605499377`*^9, 3.6234762630399876`*^9}, {
   3.6234766308734374`*^9, 3.6234766312834454`*^9}, {3.632640517287117*^9, 
   3.632640545372243*^9}, {3.6326407062240148`*^9, 3.6326407088340673`*^9}, {
   3.6527801935727015`*^9, 3.652780194929928*^9}, {3.6527802365983286`*^9, 
   3.6527802400927963`*^9}, {3.652780343023576*^9, 3.6527803458940306`*^9}, {
   3.6527804716639585`*^9, 3.6527804909461765`*^9}, {3.652780591879014*^9, 
   3.6527806683682656`*^9}, 3.6527810397502065`*^9}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"0.056015`", ",", "0.`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0.056015`", ",", "0.024309`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0.024309`", ",", "0.056015`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "0.024309`"}], ",", "0.056015`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "0.056015`"}], ",", "0.024309`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "0.056015`"}], ",", 
     RowBox[{"-", "0.024309`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "0.024309`"}], ",", 
     RowBox[{"-", "0.056015`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0.024309`", ",", 
     RowBox[{"-", "0.056015`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0.056015`", ",", 
     RowBox[{"-", "0.024309`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"0.056015`", ",", "0.`"}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{3.6527810404366283`*^9, 3.6527811545230846`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Length", "[", "fileBEND", "]"}]], "Input",
 CellChangeTimes->{{3.614425918866456*^9, 3.614425939167268*^9}, {
  3.614425991739371*^9, 3.614425996339555*^9}, {3.61451508029844*^9, 
  3.61451508806734*^9}, {3.623476090482524*^9, 3.623476098182678*^9}, {
  3.6234766341135025`*^9, 3.623476634733515*^9}, {3.632640711626125*^9, 
  3.6326407136061645`*^9}}],

Cell[BoxData["10"], "Output",
 CellChangeTimes->{{3.6144259279968214`*^9, 3.6144259397072897`*^9}, 
   3.6144259968595753`*^9, 3.6144267008277464`*^9, 3.6145150886289473`*^9, 
   3.6145175039918823`*^9, 3.615107748817848*^9, 3.615107795212843*^9, 
   3.6151078985641675`*^9, 3.615108437410676*^9, 3.6151085217609572`*^9, 
   3.6151087422629957`*^9, 3.615108834054573*^9, 3.615109778506281*^9, 
   3.6151098640109773`*^9, 3.615110267142565*^9, 3.615117714486662*^9, 
   3.6151179640754066`*^9, 3.615118132563181*^9, 3.615544684734454*^9, 
   3.6155449558669615`*^9, 3.615548956852805*^9, {3.61555211411339*^9, 
   3.6155521399148655`*^9}, 3.615552908704838*^9, 3.6155529409216805`*^9, 
   3.615612706778982*^9, 3.623407235486168*^9, 3.623407425175994*^9, {
   3.623476093952594*^9, 3.6234760987526894`*^9}, {3.6234766367935557`*^9, 
   3.623476646823756*^9}, 3.6326405662430696`*^9, 3.632640741026713*^9, 
   3.6327235597048063`*^9, {3.652780184602529*^9, 3.6527802082681837`*^9}, 
   3.6527802432908573`*^9, 3.652780390323685*^9, 3.652780680708261*^9, 
   3.652780958034787*^9, 3.6527811570659666`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ListPlot", "[", 
  RowBox[{"fileBEND", ",", 
   RowBox[{"Joined", "\[Rule]", "True"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.623476218137088*^9, 3.6234762187771006`*^9}, {
  3.623476287012469*^9, 3.6234763273532753`*^9}, {3.6527809814667387`*^9, 
  3.6527809854448657`*^9}, {3.6527810320591598`*^9, 3.6527810558031206`*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, 
   {RGBColor[0.24720000000000017`, 0.24, 0.6], 
    LineBox[{{0.056015, 0.}, {0.056015, 0.024309}, {0.024309, 
     0.056015}, {-0.024309, 0.056015}, {-0.056015, 
     0.024309}, {-0.056015, -0.024309}, {-0.024309, -0.056015}, {
     0.024309, -0.056015}, {0.056015, -0.024309}, {0.056015, 0.}}]}, {}},
  AspectRatio->NCache[GoldenRatio^(-1), 0.6180339887498948],
  Axes->True,
  AxesLabel->{None, None},
  AxesOrigin->{0., 0.},
  Method->{},
  PlotRange->{{-0.056015, 0.056015}, {-0.056015, 0.056015}},
  PlotRangeClipping->True,
  PlotRangePadding->{{0.0022406, 0.0022406}, {0.0022406, 
   0.0022406}}]], "Output",
 CellChangeTimes->{
  3.6327244193887506`*^9, 3.6527801849769363`*^9, 3.652780250747801*^9, {
   3.652780974009699*^9, 3.652780986302893*^9}, {3.652781033104393*^9, 
   3.6527810570043592`*^9}, 3.652781182728789*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Export", "[", 
  RowBox[{
  "\"\<\\\\\\\\cern.ch\\\\dfs\\\\Users\\\\b\\\\berrig\\\\Public\\\\For_\
Mataguez\\\\APERTURE\>\"", ",", "fileBEND", ",", "\"\<List\>\""}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.632724214604642*^9, 3.6327242657276664`*^9}, {
   3.6327243253148665`*^9, 3.632724363645633*^9}, {3.63272571003586*^9, 
   3.632725715745974*^9}, {3.652780162138097*^9, 3.6527801675670013`*^9}, {
   3.6527811963792267`*^9, 3.652781206332345*^9}, 3.6527812586408215`*^9, {
   3.652781357657195*^9, 3.6527813594200516`*^9}}],

Cell[BoxData["\<\"\\\\\\\\cern.ch\\\\dfs\\\\Users\\\\b\\\\berrig\\\\Public\\\\\
For_Mataguez\\\\APERTURE\"\>"], "Output",
 CellChangeTimes->{
  3.6327242667976875`*^9, 3.6327243789659395`*^9, 3.63272554560933*^9, {
   3.6327256818071623`*^9, 3.632725716817997*^9}, 3.652780185382544*^9, 
   3.652781207564785*^9, 3.652781261558115*^9, 3.6527813735385046`*^9}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[StyleBox["BHZ403- Bending magnet",
 FontFamily->"Courier"]], "Title",
 Background->RGBColor[1, 1, 0]],

Cell[BoxData[
 RowBox[{"Clear", "[", 
  RowBox[{"APER1", ",", "APER2", ",", "APER3", ",", "APER4", ",", "TILT"}], 
  "]"}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{"APER1", "=", 
   RowBox[{"99.9", "-", "3"}]}], ";", 
  RowBox[{"APER2", "=", 
   RowBox[{"38.9", "-", "3"}]}], ";", 
  RowBox[{"APER3", "=", 
   RowBox[{"99.9", "-", "3"}]}], ";", 
  RowBox[{"APER4", "=", "54"}], ";", 
  RowBox[{"TILT", "=", "0"}], ";"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"ParametricPlot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"Racetrack", "[", 
      RowBox[{"x", ",", "199.8", ",", "77.8", ",", "38.9", ",", "0"}], "]"}], 
     ",", 
     RowBox[{"-", 
      RowBox[{"Racetrack", "[", 
       RowBox[{"x", ",", "199.8", ",", "77.8", ",", "38.9", ",", "0"}], 
       "]"}]}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", 
     RowBox[{"-", "100"}], ",", "100"}], "}"}], ",", 
   RowBox[{"PlotRange", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "100"}], ",", "100"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"-", "60"}], ",", "60"}], "}"}]}], "}"}]}], ",", 
   RowBox[{"AspectRatio", "\[Rule]", "Automatic"}], ",", " ", 
   RowBox[{"PlotPoints", "\[Rule]", "600"}], ",", 
   RowBox[{"PlotStyle", "\[Rule]", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"RGBColor", "[", 
        RowBox[{"1", ",", "0", ",", "0"}], "]"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"RGBColor", "[", 
        RowBox[{"1", ",", "0", ",", "0"}], "]"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"RGBColor", "[", 
        RowBox[{"0", ",", "0", ",", "1"}], "]"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"RGBColor", "[", 
        RowBox[{"0", ",", "0", ",", "1"}], "]"}], "}"}]}], "}"}]}]}], 
  "]"}]], "Input",
 CellChangeTimes->{3.6327235144518995`*^9}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {RGBColor[1, 0, 0], LineBox[CompressedData["
1:eJxN23c8le//OHAJScOKSsiI7L3JeTlIRvcxDk6hRDJSZKcoyWpIREtmSVbp
XaGoO6WMhlVJ2TMke8fvPp/f43uu7n94Pm7nuq/XNd1eF1EXH2s3ZiYmpozV
TEz0r///2of/33e7h1fVFq7QGL78dfU1h38sULhGqmQZWW0/p+Xxv8ihxtwC
gv/4tRJvb80SMrZmc4jEP06e2EJuWkT+2SawPuIfez4Rzvi5gPwoXcTrwj+e
uSCmpvWPdwXtWO6bRz5/SLI6ifDxvDX5l3dXkWotpBINCL/ewsWs/6iXxK0l
4/hnjoYPdUjWLLwdIdHE5STvED7+w7NF9fw4KW2jwpgZYe28Z0c+yUyReucV
n8/N0vCrTT5JMxEzJNk+5fM5hJuafW87ZcyRSl+ob2EmnJs72nz18BJpOUez
++EMDReVUBcN3bpMMk7ULnAi/PWL+7fWZyukRo9dUDZNw2XjyueXHFbBFiqJ
w53w/i9BzQZczHCQZNC8iTCHnap5eQUzjPAZe/hO0fDkv+KyG9awANsbi4Sd
kzTc5ODtuUlnNrAowvZ/maDhD9eeP/DqNxsk3bTcEUlYZ6nwhXbwGhDxpZa2
j9NwwaN3KVsj2EFHyLEzeYyGp1iRSN6BHHCW/UCeIWFN7p2CdSMc8H7yYMD4
Hxp+2Sa1SchlHVBrXdn3Epb/aWTFYrIejgcfVWIZpeGSFSHLqksbILsh9Kzf
MA234L5dYHOVC/RtNJy3Ehapcahiq+KC1uZxEj5Ew9+u/hwnMMcFPC0eKxsI
izm9+HvSkRvOttuFPxik4VHuC5GZwjzgOKxyurOPhpP31jluucQL/KzDwVgn
DZdhvni4YDs/PI7OsZ/uoOEJBh+CrXbzw152F81Uwt5HDBMee/PD+XXfZ361
03A80kGpqJQfJrnfB0a10fA1pRruRXs3Q71wtn95Kw3f2z/l8dF7C1zQcvCR
+ULDDazMyS1RAvDyEp/mt2YavouHxNSSLQDjnZ+XIwlr/Nm89elrAaDFGcW3
NdHwweOLkmv/CoBEq3xhQiMNH0jQKt/htw3wU0zDM59peOLszcZzdoIw/fLe
kTe1RHnh6WoGHMLgbDzm5IjTcKojOR1SRICPlvieg/Cxe0uHhjNFoNZLTbns
FQ13mYi/frlQBNQSQlj4CX/f6JxV+lYE1vxgyv9cQcPvdFhvy58QgSJf7jny
CxrenXKCmWuvKCzeVkmUfkbDZ3skbclLopAyEfBuJp+Gb73tsY/VRBy41A/e
+ZpMw0uOxQonfZSAk0LL/koRNJx/e7AW/8BOkLzNXPbZixgvQZ9xwTlpUC2b
Cf5GpeFHj4keW/NFFhTD0jX2AQ3nunxzgMtfHny+FrqKyNDwM9basr83K0La
F9+EQ3w0PM/WL0rYWAnkA8U1160i5lcs3ndsXAmY8nQtFobscf8R8Z8W2cpQ
eZ79kOtXe/zZonJunoEKVE/p9HLj9vghpp57fX0qoMDq1CWVZ4+/ZpoRsT6r
CpEvVNvLku3xdblTtz9yqIHgGl/ThDP2+OqrQ/lBt9Xg7pzzk04vezyiQ26h
SEgdfM6UXA6i2uNvmN1ujN1Th9s5fzsD9O3xpd/jejt3asAz/znV39L2+K07
KaM9tzWA7yttOo/XHm8QrkxK4NcEl/Zjz7qX7fAph4vBuVGawBXjN35uyA73
rNlrHPVHE5irft7yaLbDo66654ge1IKe3EXD6ld2uKVXNp/7Wy1YI3bW4dgD
O/xSUmqcnKI2XNKdGglNssPNKLJ3hJK1gWlRMJz5jB1O9btu8HJcG0op+WGf
PezwNf7rfTJtdOCA2ehpfqodrtN/fOVxgQ649YnMVJHscBaD0pg/q3ThEV9Z
23NpO/z6Bs2Hio66MDTMWiXNZ4fTtloWORXpgrt9qUD7si2u0e660YZVD5o8
tvuuH7LF14x/xa9T9SBDIIiU/cUWt7o5HRCfoQfFh1TCzryyxSN/a57bOK4H
j7Ds51/ybHHrVVe3Bunsgsn6k0dOXLPFLeTP1SnE7oLrk6RLgeG2+F9PFvnH
jbtApvx58aSnLV77sZGWw68PTAK3jUtsbHEOVov+ogP6UCWk9H1K3xZX797R
752hD8Ovn/TfkrHFV2JnD57p0AfbxTSX6E22uBefo663GAkKW3e1D69Q8UPF
1YfCD5LAlEKuTvlFxdM7Vt/VyiDB7sMacnlNVPyGAMcDy3YSKG/vuKL5iorf
Trf+HboOwNnn9yGOB1Tcs2TwZJQ0QLjbI1X7a1TcXWO+ccwIoHOsxf9XGBVX
VWuMXjoEkCU4Lt/rTsXbA9NCWsIAbEYrBmg2VFzvimAq+TrAHtsxTt5dVHyd
F4Wi8hhAzuWbpokUFe9riVN6Xwvgy1n0vYeXiusuOx3a3w0wZzX0q+qvDb5d
ev2tfYsAPjo/5kV/2eDiPDwqEjwGIFOqHPKm0QbXWSNrbiJjAMZfg30/ltvg
K+7eq90NDIByy8/DKtcGJz3MzgixM4A7k42fBBJt8I1P9tS+9zaA1okBtQNh
NvhsUf7AtggDCE4c2cThaYPD2qcNSdcMgPbeznXR2ga3C3M6rvzAAKSyAouP
6Nvgeyu2KEy/MAA9noVjm6Vs8ORPAYW1nw2AJKUqQ+a1wUXSyiu+dRlAVruD
85dla3yDtcNbgUkDMJUZYikatMZls7v9aKxk6Ngm/4Cp2RpfWtnqNMJHhrKs
Ly9uVFjj7NxOBe47yTBZc2zPzfvWuNmXyt98WmQQvP68mTfJGl+cH3LQMiFD
3Lz356bT1ni1qsxeWXsy9K1qrtngYY3rZu+6n+lGhsw8Gf1HNtb431rrAE9/
woP9Ijd2WeM7VStfDUeQIeGD/eoFKWvcqjfn0forZHhjrEDN5LHG84781/Ql
lQx2B6eEi5escI3S/LMjD8jQIuzzS2fQCo9fUigof0qGNH+KGEejFS6tFc++
vZIMNsd799tUWOFxMQ0X93wkg8dazw2sD6zwy23Tf1q/keG1to3CUqIVXr09
wGComwxruSawY+FWuMkkdvr7CBmST820iXtY4Y7scqvVZsnAdfmhN9XGCu8z
7vI7xWQIw/q0wN/6VrjxidhEzbWGwBF9ZKROygqX/Ltl3JTHELb4S7vu2EQ8
z99oxlnAELymrfZU/rXE218F1ZSLGYLgFq/71QOWeNwmNrtYGUOo6NRgM22y
xHsxmravsiFk6Xs2baywxIt+374eo2UIgWTLDCzXEn9wKo36Xt8QHvRLDswk
WeJRYa3t8UaGICrimtobZonPVn0VO2FmCLErNlYWnpZ40Paw1YkUQ1AJyAuY
t7bEp3utfMuphrArboybc5clrh3EK+65zxA0jYaL0qQs8UXd/TVeTsTzrpk/
9+exxOWF9GqcDxkCme/1hahFCr5jzIGr5LAhiMk9Cyv6RMEl0+sCx9wN4U3k
hcO5WRQ8cB1r0lMvQzDYWW2WcpKCh9L6P495G0KoWbN8bwgFDzeUrZgn/PhY
J5cKYbVFjrvMx4jynsx9/RhEwVsnbx3YRJjZQNqVNYCCP1j+G61JuHL/hVMB
xym4FkfL3dOEjeItCqxdKfgb6c18zMcNwWS6fgPnXgreIB9dM0+4qKIV97Cg
4L2PIzOZfAyBP7rXv9KcgkuU/vFfQ7iff+57oBkFT9/Py85H+LzW9pyfJhT8
bFbcb0XC+Klj+nlkCq6wW7PwMGFtZg4fYy0KniD2cqWGcEYtr1i6JgXPK0iR
qCfMniT0ZU6Dght7tht/JdwirqxboE7BV195EdhNOMiYtoZXlYLXCxcmLhB+
HJuT3ilPwXUbTryW9jUEWU7D+lPiFLzk6t2JSMIpVMH3LWJEeT285nGEmW5N
V6gTPuImkxZP+OuO3Pw/IhR8ZP1etZuEz+psiHEVpuAzLp4iRYSb3b7tMt9K
wUeHV819JRxefjRfgJOCKyV8vrvjhCEMrjLOCt5IwV1F5a2lCduYCN9s3kDB
5dxVFuQJSzXWR8evp+DftqvpaBJuHFB3Yeag4MyPNoWaEt7Jy7R1iIWCP0zY
O+9NuN7zWnTZAobvSyqZfki470dnLjth7H4v9oTwwl75Ovt5DFeYf59ZSlhc
5R3nzCyGe7sXq70mHLQwe0NlGsN/dnFyNhLedtEhP/8PhnO1LidPED5SIFZ/
pxfD9SdfjSj4GcIpYZ+JkR4MzzteflqFcELCi016hA9n+bBpEC4LoO5r7cLw
EFhg20V4/a7obv4ODC98mlFuRrj446+pK98xvPqw+sJhwkujj7ae+4ThFjeT
Xl4jDGyL69o+YrhQsoTddcLnhYyXNQmfP6I/eJNensX37t91GP4ikWUpjbDQ
g1UF+2owPMCipyuXsL6rtb7yWwyf5BnJeUH4XGiq0qU3GO7rMtJfQfjd1X6x
gUoM58n1F8UJEzNlzZ3XGG4ktDn6LWFnoex69lcYPt5dvOEj4Yhvky6dZRh+
00OLv43++dFdtrqE10zkLrcT5mCLNUkpxfC4yxldnYQT1QTlLEowXGyVxPVe
wllXjaZLnmC4OFskPkz4rXlyzJWHGN7QdG39PGF2146TQ0UYHq4afGeBsEWo
tLcx4SvlnVJLhJtzKywXC4j6WpoqrhDuY+3f6p6H4dPpvgss/obAhmsU6N/D
8KnRLRc4CU+tnqq5eBfDzWV827gId5sUD7RkY3jO+v0yPIRffZYV98/C8Oi6
vkebCId0iNy6n47hQdQ2362Ej4i3l0ylEfEO1SQIEKa63/5iQNhJ2TRvG2Hl
P3zcP1MxXPDLSo0Q4aFljliuW0T7Ju4tFyXcQq6+53QTw5/Xfs4VI/wuOupN
3g0Mz3/RGy9OOHsj04rRdQznqHtnIkE40bpCMDGFGJ/DSQKShM+mhOp0JGO4
6/vJfrodhacDT14j2q/kqLcUYTOXx0nvkjBc+UOkhDRh7RyfYl7C1AyFFrr5
FYZGCq9ieEqsnowsYRa/+xyLCRjOmpZeQ/fE08NSewjvDEx2kSP8eVeHa3c8
hrd7aUfIE34ZkRqhSDj+wgCbAuGCqn3ppy9juPRxqWi6b63dXFFzCcMV+ZeW
6Y7d29zKT5g/0uWEIuGgq1fnXC9iOOWpQxvdbl8w/uILGG5SOEBWIkx2qrEy
j8PwpT8lC3QrZUb73IjFcB/dJQtlwsJ9hpf7YjB8A9Z0g+710qvyVQiLSu1q
p3vR+2X1mWgM/1OjLaRCb/9Hp/o/RGH4U9UaW7pbprRYBAgXuA3H0P1Oa0bU
/TwRv3PGf3Q/Of0f6Ukkhv8WG2yhOwv3dVpFOKaocpbuBBaFU9g5Yv4wK3Gp
Eg7fM3zjdgSG7xFREqP72KXcZ4NnMfwG2xt5uh3r3ZrVCf95OqhCt9km8Ylz
ZzBclX4R1qJ1ctaHI0um3pEX+scd+Yl3rU4h33gRsy06BLny+/a9iS7Iw7Ml
4WkWyNvOWnXliSM3qTwTIc/uZdhD+fzBjx+RX/oqJ0rfQ05tfZDJdRKZlnDx
0TAF+bavVqqVOHJ5KhaTP2/BcNpaoyNf65HZM1nELt1FppxXaFM/hSycKB7o
hSEXdc4y+YohC55Sv+Q5b84wN+hP/f6A3Gv5yOFINnJI1qqSh6HI14SF/0Ri
yJf7syUtJJA3fp/SSZ8zY9hyvYThmw/Ivhdfmv3IRt6sLq4YHoycKjPOw4ch
PzC70KQhihyczxwrPW3KsBitV5frA7Kt4tUPEenIR6zvOw4EIms9S+0U2ot8
1cjJoEMEuVo4JvPa7B6GY8RPtzfXIq/xtOTsT0M+vHCZNByIbPosxeKUKfL6
l+z7VrYjJ7Dt30edNUH9fzJIQ60O+bzWEg97FvK06N4PRwKRd1qEnUwxRdao
5Jd8LoL80eXUQ4+p3QyTKaZa6+qQ9Y9039FKQ16s2D+r4YecckjPUtoUuUzx
V1SO4D82XXm+edKY4dC7Uz37apHfSD/9JZmG/GuhfXQgAPn6TFO96h5kNtXc
HEtBZJsXfacOTRqheI+Pyv99h/zd27nj0h1ki4Li878DkE34P7F934O8/YNN
bOl25DMFd/vFJg0Zrmg5YBRRg1xuPJf8KAOZ3Ob41isAOQeXmdhijpz46c2S
lTAySUhv0WGCzHBNidD8vhrkH6drm7pTkesudxYe9Ec+3fHlVKEZ8hOHFMlo
YeRacbzeetoArT/8T+3zqpHfm8Y1NqYir655Z/HH/5/7fp+zU0yQPT0MFpSF
kRNjw+Vp44Dq8+sWlVKFbJQickonFfnasRPhj3yQXyfIRgjsRn449TbYVgjZ
nM0mRaObxPDk81HdvCvI+W9FbqtqIPdRuLsPtOsz3OrXvNPvEnL7kPzO26rI
dxb2SRR07kL3LxqtO3gFWdGvKm+nJrLu2BbTll49hu3eMGemXUSWV3g1a6GF
HC2go3GnX5fhUQdzhdXxyNzqihJWushGrg++POnSYXiep/vY8zhkz/2/WXI1
kQdn4m3z27UZFpddfS/lInJnp/pPcR3kguHlD++6tBhWjb9VbnUFuTbqg9uE
OnLPcvmMWrsmwyWcZ6MPXkK+Ffj9c7oqspY/65bqTg20f038MUm8ghz7zlfZ
TxPZX+XtVp0+dYaPTRa+2HwJWdzCy7FNC9lBsq/XaECN4SzbGcnKeOS7gq3u
O/WQn2lRXbK6VRk2+3rJ6NUF5Jvrbki81UKeTdbG2ztUUP+UFu7ruoRc6NDZ
GqWLTKM+4IMeZbSf9xpRuhOQ1WqDyLc0keWU3YWmOpQY7lCUmVWPR86MjLxw
WR1Zr/2A9q0qRbRfHeypN+JB9uvp1VR1UWCY9frF1PEKedRfUwcCfqxD7oz4
ZprsJof2G56Po4mVsgzbW/xhK+dG3vrsmeBTbxmGF2ry7n0vk0b179y2bMCB
rLNThRp6RAqtR5sDhdqf7ET9o+nUy82JfGN/ZWictySazzup5+XKJRhW33Hx
Yvpm5LbaUVZ9tx0ML2XMhhW8FEfrd2hY1YFtyIf+Kp7V8xJD8TyK0Rp6K8rw
2Pr1h99wI9d5bzjYeUiEYe0594e3Tm1nWODoxpi6zcIMD+it7EutE0T7w6ah
uqmobQw3gMKOuzsEGG6sKw+ebN3CMGf+3eKbgZtR/yZEX3jPz4/mS/PjA8mf
NzE856219bk3L/r5w+yfw0V5UDwPlY/ees7FsOTqPItTTzYybHw4qmyV+Ho0
Ho7xTqrvX4vKU9cQz8PZ0P7JvveqvBoL8nn+Dwd8VzHsFvZrIb3k7ytGPOR1
s23b5xhuEebz0cmaYDhvNCFXnm2YYfHI8+a6XzoYjlAUmFZXesfwnv6kj/wn
K0n/Z4XnF13emHcwrFbT1Bw29ovhx3F1LsqXJhjO5zc+yMo2x/DYzuTj+0T/
Mrx9ijSRa7sK/s/eKRkabsOrGdZPwIr8S9kYZgpnH/QLWcvwYKG8rMra9Qzb
qmdkGjZsZDhg5WUCx1MuhjXa/yseXuBm+LkHZSTQkZdh62sZss45mxguOHrj
/OQ6foaX9VL0V7w2M+z60PSv1+MtDMd9zP5yhk+A4cpL/z2ect7G8LRxzVjX
PUGGf+VF7QlhE2Z47NHs3eOU7Qw7KcduWLNfhOEP+//URjOJMqwZ8b20Mhs5
8m+KahNVjGGa2cNHvAvInL9vPZcqFP+nfmun5x13oPiWGpUXmSQY3vbGZ7H+
MXLlPvf3X2mSDLv97npzYxH511fFvYoFOxmeTWhpmbaUYrg/gzqesFqa4YZC
G53Bx8jGFwujfOxkGL79stWpbo0sw6GVLlr2hcg6gi/TS5zlGJ7xS9Vs5pJn
WO/WlwaRp8ium7vnDNwVGN7kZiqWtEGR4dcPVU9nPELemRui/FpJieHHnSyS
ZpHICm8XnCt+IktJqjyJV1Nm2H0shT0kGjnFzS3bvAOZw/AQSVNFheGltLTJ
s5HIHfeMR5/8QGbjExhiUlBlWFiRJqcZg3yq+I1PVCuy3WPfOmU5NYZFD8Qc
qz6PrOxXxxX8DVlF+eQCp7I6w8XHPZbY4pADNkWt8P1AlnJbZ8qppoHKF36V
JBKDfMP2ycyVFuQVTd6MX0qaDOefSzdziETeE5KsW/IT2XXkg9EJNS2G31Qr
UwyjkXktmTJW2pFzSUvjTcraDMu3HrqQeBFZaZJd92EPckhA20iPug6KN2Nb
H/MVZEX1mHbtbmTZPWpjn1R1Gd7MZr4Hu4S8R+5KZl87stdfPQN3LT3U33vl
5ncnII+ymD7W70Z+4/65WER3F8NtKpGPBeKRA0+H1Pl1IP/1/SbzVFOf4dqP
rhc5LyDHftmnQu1BfutwdXxGh8SwkdlMcfEl5Kc9b0vt+v6xn3PnWkFgeK1p
UkzbHuTU9n6dzgBkK6mG0dE7yOEmY1V+tcifBHLuME8hOxWejngtaMDwYb7Y
2Ok9yJeVZRLU/ZAVxVe9GEpD5mqeG/9Ui8yrHSP9ahI53t/s/A4RMsNyLnc7
kk2R13JtN9HwQz6Q9KnBPA35a+0mp2Pvkd99u7KOZQq55Ubm8xwhQ4altzYH
huxGnjyuS33lh9wRoq3Kk4psSPNWb61G7p95ZdgwhVxgmmfdLGTE8NCJmvMW
Zshm2JmSen/kX79sZyJTkVc5HKIVVCPrnl39onMc+XdoK1wQNma4Xa2x0cUM
eSLL2c3EHzm8X3xbZjqyXHtYA1sNsk3++vyuaeQyzfKEYdHdDBuEMAevMv/H
8WFnLwUjH6ZduSCeifyu63XGrxrkDJBu3TGDnGqzc5P3dhOGufX2n5CyQK7q
KWzlDUG+TbphtC4T+ZdvSUPwR+T9dscOjs0gcywazl/fvgetj4GUZ0/MkU9n
j/u3BSCT7ldTT2Ui7ziooSFRh7zn61vx5UnkXrFYNQsRU4azxbuNc0yRW+d9
QwODkC2viLzwz0IebDmyFFaHPD/b5fx3FlmubrIqVtSM4TQnSU1DM+TYqst1
fkHIyV0XnYvSkQWaXm45+AG5PZKnTX8OuWpwKVNG1BzFKy544eJe5HvcjX5z
Qchur3Ldr6Ujp5GfnLlXhzx/0u5G5RTyh2j5ZqqoBcOVJre5Js2QZ99L78P9
ke8K/X7LnIHsv9NE2aoG+QXbV3zTDDL5XpTjGrG9DA/P1s2xmiOvFzEpPRmM
bLlEC5nPQG66ftEotwb5E/uk6ofpf8qTHxdfEsYYjpDaoZlpjmzXHWwXGIys
ERdEWx2KzKcUuP/qaeTzkQEOLWHIU1/9HbefQS44O/mz8h8flvF3OnIWg7dN
Ev/7e7xg80Tb2ggMZLcKyNHdHOZ3oJBw9O+HInRf2jnRbnkOgw+WA5z/2x8a
ThycIvyHjM/T8wFLoeMd1yMx+PlGp/1/+YMdJ5x1z2MQ1mRXQbf3p7HOdsIl
JzZdp3tHiO+hc1EYeKb5H6X7p+hYl0Q0Br77AnToTqrzcakhnJ3Fz0K3WeCf
bu8YDL6c3F9Nz28wb/dx5Yol3E6Koft59WjPf4S9G94B3X5+xw/bx2HgYvVn
ip4/kREc7V0gHHigLJvu7qpjbmkXMDg8t2Mv3dZbjx3pu4jBo4bOK/R8DMeb
kf7YS0R9uJSl6a709naXu4xBY6tYBT2fo4If9fCPx4CHe7iZng8a8hwe5L+C
geLp1zS6s3iPej4nfPyE9jd6/ojb3ctr1VUM7sxteEvPL1VzDQ3dJfwgzkuF
7rPPPY/uScSAM9vjtgzhsQ2e3leSiPb1NnWi56vqn7gfF0rBQAu7k0HPd8Ue
GBjFCXvysvXS82PA7u5z+DoGCY5cYnQ/dDjim38DA5WQtf/Lp8Uzu/lp38ZA
pvKyhAjh3QW9Ez8JB15j1t9OeNn2sP/ZVGJ89G2xEiZ8/IFrwPs7GEwuS7sL
Et5r6RJkm4HB9FKb9Rb6evjxeB1bJgZq0QNSmwl7mJ0SKSXctzNjjo8+Ho2u
1QpkY7DwUDiKl94/Wu+EO+9hMP/I0nojPf6njf5XczBY97Nxej19P1XpqCbf
xyCDjyVpHeFxuTm/e7kYDBb5P2cnLCUq894rH4Mb1jEVzPT5kKYhKFhAtGdt
hMIq+njcZnjiI+F8Y9mb9PznQT7HbUpFGDzWv+hAz4+mrI33mX6EwVPOM9em
CbNMjG8++wyD4v/UvvUT5vFZ9lYuwaA0WbiHno8VGeGo7CasdbBksJuwbr+4
t3EZBj0Z0530fK5fqy3OUU707/27UV8Jd1aWeSS/xmDPeG06PT9cnhRRlvcB
g5X/pDanEr51NEHf8iMGNwt6Y+j56RDD9DfThIOvbJ9MIaw+Wf4RPmOgsY6n
7CrhIuu5rq8NGBik/mKOIZzB7cOx+hvRXqKH4n0JR11xdHDowqAj2/k8ifBh
96OdTN0YUMynjfQIk0mhbjmE6y+zM2kTXh697jPeg8FAS54bPR8fgjVFxvRj
cE6rfXQHYa8NZgX/DWPQkPJ3jp0wdlHz77oZDBzurR35cMIQzmk02b0iXFy6
cL+a8LOu44/8Zonxkxzg9JawsFaO6/c5DMRvMT99QfhP76banEWif+xi+PMI
J+hPpBisooDxC8XsKMJN4wVKwespoP39Rzf9/AL7nT0XZDZQoNGq7bMKYb09
vT1thO2Xjzyjn3e4m7btuhEnBV628/iKEw4wv/CXm4cCI3IfkjcS5r/nXluw
mQKlHnhejy/xfksTO9wtRoGIfXELsYTjokdPJopT4OIWJjX6+Y3nT55fIe+g
wEdhHfcwwoLcNi+yJChwZ2j2+QnCXTWRPK5SFMjuurl5P2Ev3T68R54CvOZ+
9+jnQU4L5wr1aRGuMOd962MImb3y3wYwCtxqIWv0Hyfm/7ElwUsUCiT9F3Og
g/DdmVoXJUsKvDvrFNFCOJfdYzTEigLvW188q6Wfh5HLYuWgUqB/iNxZRLg8
gF9Nbh8FivcFKgQR/sqykuDrSgGvEwYlTITXS9SbzQcT8Z3YfJL1GLFe6Nzv
OnOXsEjx0E0v4n2Xhe8kzycKnFzHPbPgTozf+GzB5hkKcNbm2/K4EfUP+u9E
FLclPE0wE4k7ROxHZ5y/SEpagiOX8KtOJ+L9Zep+7Tk9S1Acu1IVtY9YL9+v
GAdZW0K6O3b1O9UQXk5nvf5zxBL2hLr+ELMk9qv4zk/iYZaw/Z1NaZaZITBF
eP5su2oJzKq0IDFjQzBtYvZVzLGEbwqHcDcSMb4SNJJ1yy1Bqa95qlqLGL/3
nz7/WG8Jo8d/iIOKIWhKfz4hMGAJPyoFTr6VMYRtrGrSvxctoSriiZy7OPH7
ATw4Ys9lBTp37k03bSPeh/pL1U9LWkHejQ4rDV7i/XuAl3WnrhXo5SRR6jiI
+K3XHrlkZQXv+BvtyKsMYUCQc2+cuxUoGIntCZ0lw10DZ7X1p62gR76zbP43
GYQbzAtNE62gGHfjJveQ4cHzc5Ib7lvBK+Gflj9byNC0ulbC44UV9JnKm1l8
IkNZSf6zsAYryEwJnz1aSYbiqhaTrf1WsO2w1raJZ2Rw08/w8lmyglaOe2t5
88hQyh/C68RjDcGHdmivpJJB0PR2eb2kNXyP8ZByTyDDrn7a7LKeNTA5b32C
nSODT9shlf+srOFrQkZceQAZnEisK6Ie1mCY/6g6yY0MQ0xlVlLh1iD3ovSe
jh0Z4gRL7z5JtAb7WoUbYSZk6M2yilvMJXz0Xvd6TTJYRmocr66wBpZEziXy
TjI4vJH9LtdoDfyflyUPbCaD+PEXX8wHreEDa4RsLisZlvxSGseWrOE8D2t5
0ZQBXO1ed8iS1wYomzdcq+sygKriq4Em0jYQJOZR+eqTAaz74XLh7S4bqOX2
VY4pN4ANPp+UlmxsQO/YJqpRrgGIOEV9K/OwgZ7zZpUd1wygKc+ChTPMBs6s
FbjjEWEAZNeiSuEkG/gYLPK56qgBVAY6RDy5bwN92v8Jb7E3gOWJrAaWlzbw
7UFXlxgYQOvnhfsjTTagLsbrzCFtAO/Z0sL3D9oAVFVMLvMYgG/uj/5zyzaQ
3T4TEL0AIHP3MEWZlwo/5ubPSvYAZHDEmt6SpkKXavUlnRqAZ/Uvam6RqBDS
0yku+xCgbUzHTJRKhX2JU+Z7UwDwU1RHFy8qvDMo3F8WCvDEuey49BkqXIwp
e+HiDLDnnsKa2CQqyA68k2XaDXCDqq+c+YAK88euh76QAph3uukAL6kgfmhN
9Mf1APyN8ZtvNVNhITI16dEPEjTdu7bv4hAVttSTC07dIUFmU99t5hXieYWf
OGRcSCDr3eCjxmcL33l+JriIkODdAXajEWlbMD57IielSx9WFVPSdPVtgVXe
ovdRlj7MHVO+YEy1hTKzLyYDjvrAFHUg6IuHLVTTXi5SBPThLZvk1PYztrA/
X0csuH4X3OzW8htLsoXBz1xDg3G7YKOwYxAt1xZihu5WKRvuAtLbretPvbSF
MwqB159O6UHEW7Es8SZbkDlyULjigR6cUXxXE/3LFpplpDPj7fRAaOFkcMSK
LRiNVdxsY9aDD8InJZg32YGs7OETI491QbOIx22XjB00Clq3bN+vC/9dn727
rG8HmMTeNGlWXfjcOeJlb2MHXV+P9rY91IH7105XennaQevFyBt/LXUgIcte
gCXcDmr9mA8qzGiD+raPq2nX7IAaZ7RR6qo2hE5a+xvm2YFDbESHrqw21Evs
6Hny0g4uPb4OqTVa0F15pbez2Q425N7pr3XUAtbnu/sTf9nBV4pNivWUJvRt
u3FyZcUOntqHLdee0YTDbfOJq/ntIfASm0/DWk2YmsspuCxjD8KZtz8539AA
ODNq3wj2kKZygXRyqwakHYxYfcfWHiJfb4znSleH2+k71Fc87WHo6tFzouLq
QDVzmdt21h70Sx7+N3tdDbZThl+8vGYP28yk5Gy41SDn5UZuwXx7YPt9pOT1
SVX4cJk8wvXaHvgNBENK21Vgdcnr9xe/2MO1d06tKyYqMGv2Q+31sD2UWBdE
Kt5RhiUtyDrNRAPJBKXGNTNKkBH9NPnzJhrsKcsr5TZTAiZSlUCbDA02Fr0Y
c+FQBD8rkQxfEg22pCxG1p+Xh4xPfCUvbWlg97iBVbxSFjru2X1K9KLBw8K0
g6f/SkPFz/tHl8NpkKFu4aQtJAW08KRbO5JpYCznz3ujUwJYQmtr6h/QoPnI
p/SKOHFIe/XxsEwecZ/VOPBPuDhosjasRBI+8E2gRyBAHLwSvqlr5tPA5U2P
44ED4tCQ05t5p4AGhc92JKeoEJ9vWj7p9ZAGZ8wDOCu/i4GWvKoMy1MaaBRP
ni0UEwPvztsXNHEaSNy3+RB1WwTOu5dEXiHMpihVPxwvAqmjjacHCE9jDrjJ
ORH4sLTW5/prGjjV3mXv8hAB+a0hNrOVNBiKXbyeoi4Co1ZUwZIqGvz8lV43
enM7+L5ZX6RRR4OmLRO1F/uEINZM6n484cOJGiUeNUKQ0WCY0U/4shtlXLpQ
COo7QhNTPtDg1+pFTlqAECgvDQbNfKTBXa+7A/tWCcGEWhXpWT3hHO3Fe3yC
4J8T1qD+lQZ1/uX+UTsEYGr/re4YwlaPOjAHNgEI4CyZ/E74+Ikytg2DWyEg
ZIwv/BsN7jVOr2PO3wpBZq7737XQQAYLKxdX3Aqho3t67H7Q4DFr8eJbxS1w
VmPTdHAnDS6QPSOub+AHpmEltlrCdyomz+f84oOI9L2bBbuI/tBe/htSxQfn
2GO0ccLaXpYxrqf5ILJ1Poy9hwZvO7dIyA5sgujwDrabfUR9a5isdj3kBTbV
pc3DhFt2yGn+iOaFmIEt0sSeBvm2t+LFD/BCrKW1eRdhqaC6+bx1vBAnVnVF
epAGg5QsYxsXHrj0Lm/L8yEiPreSpNuLXOC3bY8S5zANdA6fxvpquYDm22dy
mHCHoeaRtJtcIC4gErxxhAZjv4qYzNS54Pmx5C8uv2mw761H57uajZBRqfK7
hDDrbff09Qc2QvTmepYNozT4HkJhrRvbANavOdRKCB+w1kz25t4AvzadTVw3
RoP6zAng3LUOPnkK5TkTPlQzy/67kgOevHz++ilhqccKg/G7OeCsx/TYwXEa
LDj6Hbu1ey1sKfeiPJmgwfisS7SrxBpY5mJ3XztJjNdqm5FVyWzQ63Yv/ABh
pwvhAoNMbPCQs7OQfYoGR+85MVt8YIHdrrbrnaaJ+fnqpukjCWaQK50Qf0zY
I5vNuf3oKuDZkKC7ZoYG89wll/48YIK5Q/I2joTLLGZ+BlSskNqe1XoVExZQ
6V4bz71MqlzncY5tlgaqG27IOVoskXKdWW85EC43P5Fd47FAin+aVfyI8Hxz
mtf7g3OkAA6oYZ2jwcdf7GFsO2dI+w+2de4nPJL5RtulaJIET0LnHhI+4jOp
9PX7GEly7RYu1nkaiD/7UHatY4i0/sDTnfsJnyTFClondJEmHluTHhL+v/8f
bFkzZseygPzS8fLxff84u1gmuugfx7JV31m9iHzcwe0p7R/rsGb0Mi8hN9L4
DO3/IpcWPt5f8I/TmC39Vi0jexZcyMz/x9gqqTKmFWQ1u6p6238skO8ymPeP
//+1j+H/B00y380=
     "]]}, 
   {RGBColor[1, 0, 0], LineBox[CompressedData["
1:eJxN23c8le//OHAJScOKSsiI7L2Jy0Eyuo9xcAolEkmRlZRKshoS0ZJZklV6
VyjySimjIVRS9qgo2Tt+9/n8Ht9zdf/D83E71329run2uoi7+9l5srKwsGQs
ZWFhfP3/1w70f99tHVxSV7hIZ/rCp6WXnf+xUOEymZIFbI2d3DaH/mKHmfEK
Cf/j5yr8vbXz2MSytaFS/zh5dB2laQ77W5vQyoh/vP+haMa3Wez76WI+Z//x
5FkJDZ1/vCVk00LfDPaZPdI1SaQP5S3Lv7C1urLOWibRmPTzdTyshvd7K3l1
5Fz+TNPRQId07ezLX5V0SQXpm6QPfd3fon5mpDJttdKwJWndvMf73smNV/bO
KD+ZnqKjS01+SZMRk5Xyfapnckg3NfvfcM2Yrix9qrmOlXRu7lDzpb3zlQs5
2t33JulIXEpTPGz9QqVZom6BK+lPH70+tz5erGz03oLKJuhIPq58Zt55Cayj
GXF5kd75MaTZmIcVdhsZN68hzeWoblVewQq/BMy8/cfpKPmvpPyqZWzA8cI6
YfMYHZnvvjE95sYB1kXEzo+jdHRv+Zldlb85IOmazaZI0nrzhU91jywDMX9a
afsIHQkfuEVdH8EJeiIuncnDdJRia2TkG8wFpzh35ZmQ1ubdLFz/iwtej+0O
GvlDRxfsU5tE3FcArc6DcztpxW+mtmzmK+HQkQMqbEN0JF0RuqA+vwqyP4Sd
ChikI2veGwX2l3jA0F7LbT1psVrnao5qHmhtHjGCATp6ufR9nNA0D/C1eC+u
Ii3h+vTvURdeONXueOLuDzqK8pqNzBTlA5dBteOdfXRE2V7vsu48PwiyDx4h
OulIjvXc3oKNgvAgOsdpooOOEozfHLHdKgjbOd21U0n77jNJeOArCGdWfJn8
2U5HEOmsUlQqCGO8r4Oj2uhoWamWV9H2tdAgmh1Y3kpH2/vHvd/6roOzOs5+
ch/pyNjWitISJQTPzgtof26moy18Riwt2UIw0vl+IZK01p+16x89FwJ6nGl8
WxMd/Tg0J738rxBItSoWJjTS0fcEnfJNARsAjrEMTr6no8Spa42nHYVh4tnt
fS/qyPJOpGsYc4mCm9mwqwvQEc2Fko5SxECAnviai/TB2/N7BjPFoM5HQ7Ws
ko7cR+OvXCgUA42EUDZB0l9Wu2WVvhSDZV9Z8t9X0NHNDrsN+aNiUOTPO015
SkfdKYdZebaLw9wNtUTZx3Q01SPtQJkXh5TRoFeT+XS0/ob3DnZzSeDR3H3z
UzIdlRyMFU16KwVHRRYCVSLoSHDjER3B75tB+gZr2XsfcryEvAfhaVlQL5s8
8plGRwcOih9c9lEelMPTtXYgOuK5cO07T6Ai+H0q9BCTo6OTdrryv9cqQ9pH
/4Q9AnSU5xAQJWqmAorBktorlpDzKxb6Do6oAEuevvXsgBMK/CX5zTpbFarO
cO7x+OSEHs+p5uYZq0HNuF4vLzihPSw9t/v61ECJ3bVLJs8JPWeZFLM7pQ6R
T9Xby5Kd0Irc8RtvuTRAeJm/RcJJJ7T00kB+yA0NuDXt9rDTxwlFdCjMFolo
gt/JkgshNCf0gtXz6vBtTbiR87czyNAJzf8eMdi8WQseB06r/5Z1Qtdvpgz1
3NACgU/0iTx+J/RBtCopQVAb3NsPPu5ecETjzueO5EZpA09MwMjpAUe0v3a7
WdQfbWCt/nbdu9kRRV3yyhHfrQM9uXMmNZWOyMYnW8DrpQ4skzjlfPCuIzqf
lBqnoKwL5/XHf4UlOSJLqvxNkWRdYJkTPsF60hHRAq4YPxvRhVJqfvh7b0e0
LHClX6a9HuyyHDouSHNEev2HFh8U6IFnn9hktZEjYjMujfmzRB/uC5S1PZF1
RFdWad9TdtGHgUH2alkBR0Rfb1PkWqQPXk6lQu0LDkir3WO1PbsBNHlv9F85
4ICWjXyCKzQDyBAKMcr+6IBsr00ExWcYQPEetfCTlQ4o8rf26dUjBnCfyH7y
Mc8B2S25tD5EbwuMNRzdd/iyA7JWPF2vFLsFrowZnQ8+4YD+7mdTfNC4BeTK
nxSP7XdAdW8b6TmChsAidMOsxN4BcbFb9xftMoRqEZUv44YOSLN7U79vhiEM
Pn/Yf13OAS3GTu0+2WEIDnNp7tFrHJCPgIu+r4QRFLZuaR9cpKE9xTV7Tuw2
AgsqpSblJw2ldyy9pZNhBFv3ainkNdHQVSGuuzbtRqC6seOidiUN3Ui3+x22
AoGb3+89XHdpaH/Jj6NRsghOeN5Xd7pMQ15aM43Dpgg6h1sCf4bTkLpGY/T8
HgRZwiOKvV401B6cFtoSjsB+qOI73Z6GDC4Kp1KuINjmMMzNv4WGVvhQqWoP
ECi4f9Y2l6GhvpY4ldd1CPy5i7708NOQ/oLrnp3dCKZtB35W/7VHG2VXXt8x
h8BP7+uM+E97JMnHpybFZwxypaqhLxrtkd4yeStzOWMw+3TE/225PVr08l3q
ZWwM1OsB3ra59sjoXnZGqKMx3BxrfCeUaI9WP9xW99rXGFpHv2vsCrdHU0X5
3zdEGMORxF9ruPbbI7T80Yeky8ZAf+3oMWdnjxzDXQ+p3jUGmazg4n2G9mh7
xTqliafGYMA3e3CtjD1KfhdUWPfeGIxk1OUo/PZILK284nOXMWS1O7t9XLBD
q+ycXwqNGYOF3ABb0Q87JJ/dHUBnp0DHBsW7LM12aH5xvesvAQqUZX18erXC
DnHyuhZ4babAWO3Bbdfu2CHLj1W/BXQoIHzlSTN/kh2amxlw1jGnQNyM7/um
43aoRl1uu7wTBfqWNNeu8rZD+tlb7mR6UiAzT87wvr0d+ltnF7Q/kPSPfrGr
W+zQZvWqysEICiS8cVo6K2OHbHtz7q+8SIEXZkq0TD47lLfvv6aPqRRw3D0u
Wjxvi7RK80/9ukuBFlG/n3o/bFH8vFJB+SMKpAVSJbgabZGsTjznxioK2B/q
3WlfYYviYj6c2/aWAt7L969iv2uLLrRN/Gn9TIHnuvZK84m2qGZjkPFANwWW
84wSB0/YIvMx4viXXxRIPjbZJulti1w4FZZqTFGA58I9X5q9Leoz6wo4xmIC
g4b04N+GtsjscGyi9nIT4Ire96texhZJ/103YsFnAusCZT02rSGfF2g66SZk
Aj4Tttuq/tqg9sqQ2nIJExBe53On5rsNilvD4RgrZwIVnVocFk02qJeg6/qr
mkCW4f6m1RU2qOj3jSsxOiYQTLHJIHJt0N1jabTXhiZwt1/6+2SSDYoKb22P
NzUBcTGP1N5wGzRV/UnisKUJxC7a21rvt0EhG8OXJlJNQC0oL2jGzgZN9Nr6
l9NMYEvcMC/3FhukG8IvuX+HCWibDhalydigOf2dtT6u5PMuWz0J5LNBiiIG
tW57TIAi8Pxs1BwVbRp25inZawISCo/Di95RkXR6ffCwlwm8iDy7NzeLioJX
sCc98jEB4801lilHqSiM3v9+2NcEwiybFXtDqeiEiXzFDOkHBzt51EhrzHHd
Yj1Ilvdw+tPbECpqHbu+aw1pVmNZD/YgKrq78Ddam3TVzrPHgg5RkQ5Xy63j
pE3jrQvsPKjohexaAdZDJmA+0bCKezsVfVCMrp0hXVTRCt7WVNT7IDKTxc8E
BKN7A6usqEiq9E/gMtL9gtNfgi2pKH0nP6cA6TM6G3O+mVPRqay438qk4dhB
wzwKFSlt1S7cS1qXlcvPTIeKEiSeLdaSzqjjl0jXpqK8ghSpBtKcSSIfp7Wo
yGx/u9kn0i2SqvoFmlS09OLT4G7SIWb0ZfzqVNQgWpg4S/pBbE56pyIV6X84
/FzW3wTkuU0ajklSUcmlW6ORpFNowq9bJMjyevit4kizXJ+o0CS9z1MuLZ70
p025+X/EqOjXyu0a10if0lsV4yFKRZPu+8WKSDd7ft5itZ6KhgaXTH8ifaL8
QL4QNxWpJLy/temwCfxYYpZ1ZDUVeYgr2smStjcXvda8iooUvNRmFUnLNDZE
x6+kos8bNfS0STd+13Rn5aIi1vtrwixIb+ZnWT/ARkX3ErbP+JJu2H85umyW
QDuSSibuke772pnLSZq400s8JD27XbHeaYZASjOvM0tJS6q94p6cIpCvV7HG
c9Ihs1NX1SYI9K2Lm7uR9IZzzvn5fwjE07qQPEp6X4FEw81eAhmOVf5SCjCB
Y6J+o796CJR3qPy4GumEhKdrDEjvzfLj0CJdFkTb0dpFoFA0y7GF9Mot0d2C
HQQqfJRRbkm6+O3P8YtfCFSzV3N2L+n5ofvrT78jkPW1pGeXSSOOuRVtbwkk
kizleIX0GRGzBW3SZ/YZ/rjGKM/6S/fvegI9TWSbTyMtcndJwY5aAgVZ93Tl
kjb0sDNUfUmgMb5fOU9Jnw5LVTn/gkD+7r/6K0i/utQv8b2KQHy5geJAmgph
y24+J5CpyNrol6TdRLIbOCsJNNJdvOot6YjPY+6dZQS65q0j2Mb4/NAWB33S
y0ZzF9pJc3HEmqeUEijuQkZXJ+lEDWEF6xICSSyRutJLOuuS6UTJQwJJckTC
IOmXVskxF+8R6EPT5ZUzpDk9Oo4OFBHohPqRm7OkrcNkfc1IXyzvlJkn3Zxb
YTNXQNbXxkJ5kXQfe/96rzwCTaT7z7IFmgAHaBUY3ibQ+NC6s9ykx5eO1567
RSArOf82HtLd5sXfW7IJlLNypxwf6cr38pKBWQSKru+7v4Z0aIfY9TvpBAqh
tfmvJ71Psr1kPI2Md6A2QYg0zevGR2PSrqoWeRtIq/4R4P2WSiDhj4u1IqQH
Frhiea6T7Zu4vVycdAul5rbrNQI9qXufK0H6VXTUi7yrBMp/2hsvSTp7Ncui
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
gzfzy/2uPKeDa90tzi5vMVBcH2o/VUWHgdi5KymaYjBkSxMuqabDt5/p9UPX
NoL/i5VFWvV0aFo3WneuTwRiLWXuxJPem6hV4l0rAhkfTDL6SV/wpI7IFopA
Q0dYYsobOvxcOsdNDxIB1fkfIZNv6XDL59b3HUtEYFSj2uhxA+kc3bnbAsIQ
mBP+QfMTHeoDywOjNgnB+M7r3TGkbe93EM4cQhDEXTL2hfShw2Ucq36sh6DQ
YYETn+lwu3FiBWv+egix9Nj5qoUOckR4uaTyeggb2tbj+JUOD9iL514qr4NT
WmsmjnTS4Sxlf8SVVYLAMqjCUUf6ZsXYmZyfAhCRvn2tcBfZH7oLf0OrBeA0
Z4wukNb1sYnxOC4Aka0z4Zw9dHjZuU5K/vsaiD7RwXGtj6xvLYvtlnv8wKE+
v3aQdMsmBe2v0fwQ832dLLmnQb7D9XjJXfwQa2Nn1UVaJqR+Jm8FP8RJVF+U
/UGHH9QsM3t3Pjj/Km/dkwEyPs+SpBtzPBCwYZsK9yAd9PYeJ/rqeIDu32e+
l3SHifa+tGs8ICkkdmT1LzoM/yxisdTkgScHkz+6/6bDjpfena9qV0NGldrv
EtLsN7zSV+5aDdFrG9hWDdHhSyiVvX54Fdg959IoIb3LTjvZl3cV/FxzKnHF
MB0aMkcR95YV8G6/SJ4b6T21U5y/q7jg4bMnzx+Rlnmg9CN+Kxec8p4Y3j1C
h1mXgIPXty6HdeU+1IejdBiZco/2kFoGCzycXsvHyPFaY/9rSTIH9HrePrGL
tOvZE0I/WDjgHndnIec4HQ7cdmW1fsMGWz0cVrpOkPOz8prFfSlWUCgdlXxA
2jubw639wBLgW5Wgv2ySDjO8Jef/3GWB6T2K9i6ky6wnvwVVLFa2Pa7zKSYt
pNa9PJ53obJqhfdpjik6qK+6quBiPV+Z68Z+3Zl0udXh7Frv2cr4R1nF90nP
NKf5vN49XRnEhWrZp+nw9idnOMfmycqdu9s6d5L+lflC171orBI9DJu+R3qf
35jKpy/DldLL1/Gwz9BB8vGbsssdA5Urdz3avJP0UaNYYbuErsrRB3ZG90j/
3/8PtiwbdmSbxX7mcuHQjn+cXSwXXfSPYzlqbi6dwz7k7PmI/o/12DN6Weex
G+kCJk5/sUsLH+ws+MdprDYBSxaw9xeczcz/x8QSmTKWRWwNx+oGh38slO/+
I+8f//9rB9P/DyXho2s=
     "]]}},
  Axes->True,
  AxesOrigin->{0, 0},
  Method->{},
  PlotRange->{{-100, 100}, {-60, 60}},
  PlotRangeClipping->True,
  PlotRangePadding->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{3.632723516081932*^9, 3.6327235604948225`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Show", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"ParametricPlot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Racetrack", "[", 
        RowBox[{"x", ",", "199.8", ",", "77.8", ",", "38.9", ",", "0"}], 
        "]"}], ",", 
       RowBox[{"-", 
        RowBox[{"Racetrack", "[", 
         RowBox[{"x", ",", "199.8", ",", "77.8", ",", "38.9", ",", "0"}], 
         "]"}]}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"x", ",", 
       RowBox[{"-", "100"}], ",", "100"}], "}"}], ",", 
     RowBox[{"PlotRange", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "100"}], ",", "100"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "60"}], ",", "60"}], "}"}]}], "}"}]}], ",", 
     RowBox[{"AspectRatio", "\[Rule]", "Automatic"}], ",", " ", 
     RowBox[{"PlotPoints", "\[Rule]", "600"}], ",", 
     RowBox[{"PlotStyle", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"RGBColor", "[", 
          RowBox[{"1", ",", "0", ",", "0"}], "]"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"RGBColor", "[", 
          RowBox[{"1", ",", "0", ",", "0"}], "]"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"RGBColor", "[", 
          RowBox[{"0", ",", "0", ",", "1"}], "]"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"RGBColor", "[", 
          RowBox[{"0", ",", "0", ",", "1"}], "]"}], "}"}]}], "}"}]}]}], "]"}],
    ",", "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"ParametricPlot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Racetrack", "[", 
        RowBox[{"x", ",", 
         RowBox[{"199.8", "-", "6"}], ",", 
         RowBox[{"77.8", "-", "6"}], ",", 
         RowBox[{"38.9", "-", "3"}], ",", "0"}], "]"}], ",", 
       RowBox[{"-", 
        RowBox[{"Racetrack", "[", 
         RowBox[{"x", ",", 
          RowBox[{"199.8", "-", "6"}], ",", 
          RowBox[{"77.8", "-", "6"}], ",", 
          RowBox[{"38.9", "-", "3"}], ",", "0"}], "]"}]}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"x", ",", 
       RowBox[{"-", "100"}], ",", "100"}], "}"}], ",", 
     RowBox[{"AspectRatio", "\[Rule]", "Automatic"}], ",", " ", 
     RowBox[{"PlotPoints", "\[Rule]", "600"}], ",", 
     RowBox[{"PlotStyle", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"RGBColor", "[", 
          RowBox[{"1", ",", "0", ",", "0"}], "]"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"RGBColor", "[", 
          RowBox[{"1", ",", "0", ",", "0"}], "]"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"RGBColor", "[", 
          RowBox[{"0", ",", "0", ",", "1"}], "]"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"RGBColor", "[", 
          RowBox[{"0", ",", "0", ",", "1"}], "]"}], "}"}]}], "}"}]}]}], "]"}],
    ",", "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"ParametricPlot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Rectellipse", "[", 
        RowBox[{
        "x", ",", "APER1", ",", "APER2", ",", "APER3", ",", "APER4", ",", 
         "TILT"}], "]"}], ",", 
       RowBox[{"-", 
        RowBox[{"Rectellipse", "[", 
         RowBox[{
         "x", ",", "APER1", ",", "APER2", ",", "APER3", ",", "APER4", ",", 
          "TILT"}], "]"}]}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"x", ",", 
       RowBox[{"-", "100"}], ",", "100"}], "}"}], ",", 
     RowBox[{"PlotPoints", "\[Rule]", "600"}], ",", 
     RowBox[{"PlotStyle", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"RGBColor", "[", 
          RowBox[{"0", ",", "0", ",", "1"}], "]"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"RGBColor", "[", 
          RowBox[{"0", ",", "0", ",", "1"}], "]"}], "}"}]}], "}"}]}], ",", 
     RowBox[{"AspectRatio", "\[Rule]", "Automatic"}]}], "]"}]}], 
  "\[IndentingNewLine]", "]"}]], "Input",
 CellChangeTimes->{{3.5140140209142475`*^9, 3.5140140221329975`*^9}}],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {RGBColor[1, 0, 0], LineBox[CompressedData["
1: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
//+1j+H/B00y380=
      "]]}, 
    {RGBColor[1, 0, 0], LineBox[CompressedData["
1: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
BKN7A6usqEiq9E/gMtL9gtNfgi2pKH0nP6cA6TM6G3O+mVPRqay438qk4dhB
wzwKFSlt1S7cS1qXlcvPTIeKEiSeLdaSzqjjl0jXpqK8ghSpBtKcSSIfp7Wo
yGx/u9kn0i2SqvoFmlS09OLT4G7SIWb0ZfzqVNQgWpg4S/pBbE56pyIV6X84
/FzW3wTkuU0ajklSUcmlW6ORpFNowq9bJMjyevit4kizXJ+o0CS9z1MuLZ70
p025+X/EqOjXyu0a10if0lsV4yFKRZPu+8WKSDd7ft5itZ6KhgaXTH8ifaL8
QL4QNxWpJLy/temwCfxYYpZ1ZDUVeYgr2smStjcXvda8iooUvNRmFUnLNDZE
x6+kos8bNfS0STd+13Rn5aIi1vtrwixIb+ZnWT/ARkX3ErbP+JJu2H85umyW
QDuSSibuke772pnLSZq400s8JD27XbHeaYZASjOvM0tJS6q94p6cIpCvV7HG
c9Ihs1NX1SYI9K2Lm7uR9IZzzvn5fwjE07qQPEp6X4FEw81eAhmOVf5SCjCB
Y6J+o796CJR3qPy4GumEhKdrDEjvzfLj0CJdFkTb0dpFoFA0y7GF9Mot0d2C
HQQqfJRRbkm6+O3P8YtfCFSzV3N2L+n5ofvrT78jkPW1pGeXSSOOuRVtbwkk
kizleIX0GRGzBW3SZ/YZ/rjGKM/6S/fvegI9TWSbTyMtcndJwY5aAgVZ93Tl
kjb0sDNUfUmgMb5fOU9Jnw5LVTn/gkD+7r/6K0i/utQv8b2KQHy5geJAmgph
y24+J5CpyNrol6TdRLIbOCsJNNJdvOot6YjPY+6dZQS65q0j2Mb4/NAWB33S
y0ZzF9pJc3HEmqeUEijuQkZXJ+lEDWEF6xICSSyRutJLOuuS6UTJQwJJckTC
IOmXVskxF+8R6EPT5ZUzpDk9Oo4OFBHohPqRm7OkrcNkfc1IXyzvlJkn3Zxb
YTNXQNbXxkJ5kXQfe/96rzwCTaT7z7IFmgAHaBUY3ibQ+NC6s9ykx5eO1567
RSArOf82HtLd5sXfW7IJlLNypxwf6cr38pKBWQSKru+7v4Z0aIfY9TvpBAqh
tfmvJ71Psr1kPI2Md6A2QYg0zevGR2PSrqoWeRtIq/4R4P2WSiDhj4u1IqQH
Frhiea6T7Zu4vVycdAul5rbrNQI9qXufK0H6VXTUi7yrBMp/2hsvSTp7Ncui
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
gzfzy/2uPKeDa90tzi5vMVBcH2o/VUWHgdi5KymaYjBkSxMuqabDt5/p9UPX
NoL/i5VFWvV0aFo3WneuTwRiLWXuxJPem6hV4l0rAhkfTDL6SV/wpI7IFopA
Q0dYYsobOvxcOsdNDxIB1fkfIZNv6XDL59b3HUtEYFSj2uhxA+kc3bnbAsIQ
mBP+QfMTHeoDywOjNgnB+M7r3TGkbe93EM4cQhDEXTL2hfShw2Ucq36sh6DQ
YYETn+lwu3FiBWv+egix9Nj5qoUOckR4uaTyeggb2tbj+JUOD9iL514qr4NT
WmsmjnTS4Sxlf8SVVYLAMqjCUUf6ZsXYmZyfAhCRvn2tcBfZH7oLf0OrBeA0
Z4wukNb1sYnxOC4Aka0z4Zw9dHjZuU5K/vsaiD7RwXGtj6xvLYvtlnv8wKE+
v3aQdMsmBe2v0fwQ832dLLmnQb7D9XjJXfwQa2Nn1UVaJqR+Jm8FP8RJVF+U
/UGHH9QsM3t3Pjj/Km/dkwEyPs+SpBtzPBCwYZsK9yAd9PYeJ/rqeIDu32e+
l3SHifa+tGs8ICkkdmT1LzoM/yxisdTkgScHkz+6/6bDjpfena9qV0NGldrv
EtLsN7zSV+5aDdFrG9hWDdHhSyiVvX54Fdg959IoIb3LTjvZl3cV/FxzKnHF
MB0aMkcR95YV8G6/SJ4b6T21U5y/q7jg4bMnzx+Rlnmg9CN+Kxec8p4Y3j1C
h1mXgIPXty6HdeU+1IejdBiZco/2kFoGCzycXsvHyPFaY/9rSTIH9HrePrGL
tOvZE0I/WDjgHndnIec4HQ7cdmW1fsMGWz0cVrpOkPOz8prFfSlWUCgdlXxA
2jubw639wBLgW5Wgv2ySDjO8Jef/3GWB6T2K9i6ky6wnvwVVLFa2Pa7zKSYt
pNa9PJ53obJqhfdpjik6qK+6quBiPV+Z68Z+3Zl0udXh7Frv2cr4R1nF90nP
NKf5vN49XRnEhWrZp+nw9idnOMfmycqdu9s6d5L+lflC171orBI9DJu+R3qf
35jKpy/DldLL1/Gwz9BB8vGbsssdA5Urdz3avJP0UaNYYbuErsrRB3ZG90j/
3/8PtiwbdmSbxX7mcuHQjn+cXSwXXfSPYzlqbi6dwz7k7PmI/o/12DN6Weex
G+kCJk5/sUsLH+ws+MdprDYBSxaw9xeczcz/x8QSmTKWRWwNx+oGh38slO/+
I+8f//9rB9P/DyXho2s=
      "]]}}, {{}, {}, 
    {RGBColor[1, 0, 0], LineBox[CompressedData["
1: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
7WZB59PSlirCmVD+ZN55UUmTATmev2VfEC3VXrGjS9cf/XtB7Y8p23yP2ALV
n0T5AvXzp6gumkgrVGIap1rqdLyNwYc+quNUtsxqqTZQbTlyqZU/qtbkf1au
Tvaos+mjWrPpfWfs5CjVFeeaPdRSpqgu5jffz8i0QPXk1ssBuyT+US02YzJV
6EwL/7N/Zp621zg91cZpWGnIYyaqaY4z/wiOZKH6xz2lbeos7FQ7a+Xd2P5u
I9WhqzVprFVcVGv3PigfX9pEdbUv+WfYHh6qHTLytrnf5qW65HBW/DQbP9Ur
hpnGq34CVHvet/rnV7GZ6nOtNz+c4NtCdW3Kg4oZdyGqZ82bJr/dEqZ6tOiM
ZSSTKNWTZfMFAWQxqveqJXJs2C1Odcvu328SaCSo1on7/Lj2JvLpf5ka750k
qaZY3y/jWULm/HW1Wu6e1Lr2scwu7pFG/VvuUPtLI0O1UF3g3/YK5NpdPq+7
KLJUe/36Vpf1F3m0S2WnSslWqufTPn2atZOjeiTP6U8avTzV7+456v+oQDZP
vncm0EWB6uya7r3NG7ZRfazWQ9f1HrK+cM31R+6KVM8F5+h0cilRbXj1wzvx
KmRPgYEFko8y1bxeVpKXOFSofnlfIyavDHlrYaTaS1VVqiv6GWStTyMr1y+5
P/+KLCerXnlBU41qn8lM5sgE5Ewvr5s2fcis2w+Y6KirU72cmzt98jRy3y3z
icovyEx8W8ZolDWoFlWhKOqcRY4urws8043sUhHUrKaoSbXEvrNHGuOR1YKb
uSI+IqurRS1xqmlRXR7gu8x0DjmU98wq3xdkOS82K05NbXR+0ReXxM8iZzlX
zqV+Ql7V4ckbVdWhuvjUdWu308iWkZcNHn1F9vzZYnZUU5fqukY18vYEZB47
mrzVXuRCk+U/79X0qFbqPpCUnoysOs1scH8QOTK05+eglj7qb57QMF0qsorW
2V69AeRtlpqTbRoGVAsw2VhiKciWiqk3hnuR/f4Zknx0DVG8dyou7khDnmCw
qjAeQK7zeVsubmBEdY/66YotF5DDYiKbg/uQ/wV9VKjSMab6TatnMmcScuKH
XepOg8j1bhf/zOmbUG1mPVdenoJcNVj/2GV4nYPd+1mEgWoWq0tneyyRc3pH
9PtDke3l3k1MXEM+bjH5KvgNctuW29foZpD33ouJeylMovogX2LirCXyeTWF
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
      "]]}, 
    {RGBColor[1, 0, 0], LineBox[CompressedData["
1:eJxN23c8lt//OHAjkhGZyR4J2Xs7t8jsum13aYiMJGSLhpKEIknekaSNBmmp
eIVERpJUysgqlGST+F2+v8fnPu5/eD4uruuc8zrXeV3H6yLlGeTozcTAwFDL
zMCw9PX/f7ai/323eZjxzZ1FGt2n25gz3Jd53Z2V8o8XsLW2cdsH/sPeWyqe
93UOu8XPGD2dxL767uDRkGHsJD33IMUP2B4Wozu2A3bmWFjNVCE2j/auS23n
saPFFkLV4rDlspmevvXH1nw6FfnRGdts+5/DJ5bZcXH4hOYyh1h8O5fqhF3y
rv6epSO2xlDe98dUbHURW7csG2xUbrFz8zLb70beE9bYwTe1Q+2X+b6mZCqb
Fbaa3WRNlAW26qHLOlsRdsYjJyeGZZ79vTL4pil2lWfw7UkTbDcrimi6Mfbz
uEk9/WWWenbbpdsIe1iZN1Vlme19awo/GGI/zDtYG7vMR/h6GesNsPvsLoiH
LLN1gq2h8DLfrVh0A31svtkHYb6kX237Z6zN0FkRpeF3djVpacLv64q5HxUd
+0TvPtSjoUXjWaadc78rzK43v9lOOk+8Kuji57GKm53x35lJr+j13pTmPFnB
uVZ/RaEuDb3OHi79nTJdccDhl6QjaauIXycFMmYrDKtdtuXp0BCz7A/2Tzr/
KvL+rYq0JM2nfCBSqmuhgkW3/NyINg39nPFQ+qLHAG9vyzUakTap5uLPus8I
Wr3tg71aZPsHOYJVdzPBf6KprMmkp22zR9w5mMErddr0syYNVYzFFo8TK2A6
rLYkXIOGmrJuMwxcZoXtd2PfipLm7u3tea+4El5+V/tZpU5DD3keW58pWQnJ
2/5bz0v6drucncFTNpBA/ll3VWmI5cFrSaFb7BAfLf7QhfRkh1c8EueAwZKW
d/MqNCRcqiy6L50DHqw35LAlzTHdYbA+nBMsOTgPf1eiIcO7bAphcqshqO2O
l6QiDUU49SVQrvJAQI+HX6MCDSk+XKcc+5YH/Eb49h8kDbrznGZ/ecCT9WBE
qzwNuVzx3nzIYQ0462w+lbiBhk7lf0SrZteAQWbn3VFZGsr4+rmhRocPWF25
50CChuQaC/fHHxQAZs/Khf2kbca1DhTnCABDYDizCOlq3cK4m+UCMHviC2e4
OA19NbR/OcYoCD8f3pRQEKMhd4Et/RIJgtAigCzOrqMhtUvlFWknhCD3Q3Da
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
ACvOn2xbziprrcCOF2zYGcxIt/ehwbnLj/+Z0vtjxjHdITFD9ydxgSCD/DG6
C0bSbimzDtMtczze1vBDF91xqusmtdVq6LYaONcoGF1Z8T+rlCV7Vtl20a1V
97710Ogg3SWn6j3VU8boLhS02MXCOkP36IbzgVul/tEtMWE6dsuFEf7ngMw8
He9hZrpN0oi7oU9Y6WY4zPYjJGoV3T/uKG/UWMVJt4t23pVN71bTHbZYnsb+
kIdunc4HxcNza+gu86P+DN/OR7djRt5Gjxv8dBfty4of5xCke8Eo02TRX4hu
r3vW//xL1tJ9qvHqhyMC6+iuTHlQMuEhQvekRd3ot+uidA8WnLCKYhWne/T+
9LVAqgTdO9QTuVZuk6S7YdvvNwkMUnTrxn1+UnkV+/i/TM33ztJ002zu3eeb
w+b+dbFM/o7MsvatmpzdLov7N9+i/pdhPd0iVUF/m0uwK7f6vm6jydHt/etb
VdZf7ME21S2qRRvonk779GnSXp7ugTznP2nMCnS/u+Nk8KME2yL5zokgV0W6
s8vbd9Sv3Ej3wUpPPbc72Aai5ZcfeyjRPRWSo9vKo0y30cUP7yQfYnsJ9cxQ
fFXo5ve2lj7HpUr3y3uasXn3sTfcilJ/qaZGd0n3Cjmb49gq1XMeL75iy8tp
lJ7RUqfbdzSTLSoBO9Pb+6ptFzb7pt2muhoadM/n5o4fPY7ddd1ipPQLNqvA
uiEGFU26xVVpSronsWOKq4JOtGO7lgTXqytp0S218+T+2nhs9ZB6nsiP2Brq
0XPc6tp0Fwf6zbOewg7jP7Eo8AVb3pvDmltLB59fvOKc5EnsLJfSqdRP2Iu6
fHmDarp0Fx67bON+HNsq6rzh46/YXj8bzA9o6dFdVatO3ZSAzWfPkLfYiX3L
dP7Pe3V9upXbdyelJ2OrjbMZ3uvFjgrr+NmrbYD7myfSz5SKrap9slO/B3uj
ldZok6Yh3UKstlZECraVUuqV/k5s/39GFF89IxzvLUqzm9OwR1ZYl5j0YFf5
vi2WNDSmu0PjeMm6M9jhsVH1IV3Y/4I/Kj7UNaH7TaNXMncSduKHrRrOvdjV
7mf/TBmY0m1uM1VcnIL9sLf6iWv/Mod4dK8SRXSvsj53ssMKO6dzwKA7DNtB
/t3IyCXsw5ajr0LeYDetu3GJaQJ7x53YuJeiFLr3CCQmTlphn1ZXTNMOwVaV
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
9g==
      "]]}}, {{}, {}, 
    {RGBColor[0, 0, 1], LineBox[CompressedData["
1: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
e9E6///DifD/A21boaY=
      "]]}, 
    {RGBColor[0, 0, 1], LineBox[CompressedData["
1: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
1Gm/wfzFbt+LNvj/H06E/x/djh3E
      "]]}}},
  Axes->True,
  AxesOrigin->{0, 0},
  Method->{},
  PlotRange->{{-100, 100}, {-60, 60}},
  PlotRangeClipping->True,
  PlotRangePadding->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{3.5140140264767475`*^9, 3.632723561344839*^9}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[StyleBox["BHZ406- Bending magnet",
 FontFamily->"Courier"]], "Title",
 Background->RGBColor[1, 1, 0]],

Cell[BoxData[
 RowBox[{"Clear", "[", 
  RowBox[{"APER1", ",", "APER2", ",", "APER3", ",", "APER4", ",", "TILT"}], 
  "]"}]], "Input"],

Cell[BoxData[
 RowBox[{
  RowBox[{"APER1", "=", 
   RowBox[{"192.2", "/", "2"}]}], ";", 
  RowBox[{"APER2", "=", 
   RowBox[{"70.2", "/", "2"}]}], ";", 
  RowBox[{"APER3", "=", 
   RowBox[{"192.2", "/", "2"}]}], ";", 
  RowBox[{"APER4", "=", "54"}], ";", 
  RowBox[{"TILT", "=", "0"}], ";"}]], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"(", 
   RowBox[{"61", "+", "35.1"}], ")"}], "*", "2"}]], "Input"],

Cell[BoxData["192.2`"], "Output",
 CellChangeTimes->{3.5140140396642475`*^9, 3.6327235614448414`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Show", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"ParametricPlot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Racetrack", "[", 
        RowBox[{"x", ",", "192.2", ",", "70.2", ",", "35.1", ",", "0"}], 
        "]"}], ",", 
       RowBox[{"-", 
        RowBox[{"Racetrack", "[", 
         RowBox[{"x", ",", "192.2", ",", "70.2", ",", "35.1", ",", "0"}], 
         "]"}]}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"x", ",", 
       RowBox[{"-", "100"}], ",", "100"}], "}"}], ",", 
     RowBox[{"PlotRange", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "100"}], ",", "100"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "60"}], ",", "60"}], "}"}]}], "}"}]}], ",", 
     RowBox[{"AspectRatio", "\[Rule]", "Automatic"}], ",", " ", 
     RowBox[{"PlotPoints", "\[Rule]", "600"}], ",", 
     RowBox[{"PlotStyle", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"RGBColor", "[", 
          RowBox[{"1", ",", "0", ",", "0"}], "]"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"RGBColor", "[", 
          RowBox[{"1", ",", "0", ",", "0"}], "]"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"RGBColor", "[", 
          RowBox[{"0", ",", "0", ",", "1"}], "]"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"RGBColor", "[", 
          RowBox[{"0", ",", "0", ",", "1"}], "]"}], "}"}]}], "}"}]}]}], "]"}],
    ",", "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"ParametricPlot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Rectellipse", "[", 
        RowBox[{
        "x", ",", "APER1", ",", "APER2", ",", "APER3", ",", "APER4", ",", 
         "TILT"}], "]"}], ",", 
       RowBox[{"-", 
        RowBox[{"Rectellipse", "[", 
         RowBox[{
         "x", ",", "APER1", ",", "APER2", ",", "APER3", ",", "APER4", ",", 
          "TILT"}], "]"}]}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"x", ",", 
       RowBox[{"-", "100"}], ",", "100"}], "}"}], ",", 
     RowBox[{"PlotPoints", "\[Rule]", "600"}], ",", 
     RowBox[{"PlotStyle", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"RGBColor", "[", 
          RowBox[{"0", ",", "0", ",", "1"}], "]"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"RGBColor", "[", 
          RowBox[{"0", ",", "0", ",", "1"}], "]"}], "}"}]}], "}"}]}], ",", 
     RowBox[{"AspectRatio", "\[Rule]", "Automatic"}]}], "]"}]}], 
  "\[IndentingNewLine]", "]"}]], "Input",
 CellChangeTimes->{{3.5140140331486225`*^9, 3.5140140343673725`*^9}}],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {RGBColor[1, 0, 0], LineBox[CompressedData["
1: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
nUsfkL97u3Qm3Ea2yHt27ncQsrHAR9bvJsji9Taxr8SRT+fd65ea3EP329aD
hmdqkN8YzSYXZCIbtDtVeAUhP8DlJzabIyd9LF+0EkMmieosOE4Y0F1TJDrn
UIP841Tt15505LpLXfnOgcinOpvD882QCx1Ttl0QQ66Vxhut/+mj+UfgBTW3
GrnK9OKXL+nIzDUfLP4Erjoe8OluijHyUU/9eSUx5KTYyJ32fwG1ZyiNQq5E
NkyRCNdKR77uczyywA/5feL2M0J7kZ9OVYTaiiKbs9qkqPeQ6J4sHtPOvYL8
uELiloo6ch95Y8/BDj262wKaZAISkDuGd8rcUkG+Pe+wNa9LFx2PN+RwvoKs
EFCZK6OBrD2+2bS1V4duu3KmrIx45J273s1YaCJfENJSv92vTfeYo/ku5svI
G9UUtlppIxu6PWou7Naie46nx6f4IvLR/b/X5GggD05ftn3csZtu6e3M91Pi
kbu61H5KayHnjSzXf+jWpFvlctobqyvItefr3SfUkH8tv5lW7dCgu4gr6oJz
AnJa8PdPd1SQNQNZNld3qaP1a+KPcdIV5NgP/koBGsiByhWCWn1qdPtM5pds
SkCWtvByatdEdtzW12s4oEp3tu30trLLyPdE2jxkdJBfalJcs3tU6DZrSTB8
F4d8kyN1a4Um8kzybryjUxnF51W+Q3cCcr5jV9t5bWR7yiN++KWE1vNeQ3JP
IrJqbYhBmgbyDiUP0alORbo7FeRn1C4jZ0VHx11SQ9bpOLg7rVIBrVfOvxoN
eZADfvVqqLjuopvlRnz637c7UbymDgb94EDuOvPNNNl9B1pveBrGksq20021
+MP6ZiOy4MuXIi+85emer8m9//21HGp/l/CyPjuylowy5eQRWTQfbQoW7SiU
QfHRONC7kQs5dX/ZyYve29DzLEM5t+PNVrrVtsTH39mE3F47xqLnvoXuxcyZ
iLxSaTR/n4yoPCiMfGhJIUrHSwr1pyBGc7hCku5xTs7D5RuR67zXO3cdkqB7
96zH07RwcbqFjm2IqdskRveAzopDep0IWh/4huumzgvT/Rl2bbm3RYjuL3Vv
QifbNtPN9fjes5vBm1B8Ey/EVQkIoOel6fnB5E98dM96awoWe/Oi8w+zfYqU
5EH9eap0LK2Ym+5tzLkW4YUb6DY6fP41ozQnygcf3km1/evQ9dTUpXNxVrR+
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
c1f5/78c6P5/2En9Kg==
      "]]}, 
    {RGBColor[1, 0, 0], LineBox[CompressedData["
1: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
PiNUt8efmWGP8IHZW4X/DBj9MeKaapOYZrhFXNBPO2uM4ZyRxOwt7EMMy0Sd
sdRp6mD4lKLwX3Wldwyb9V2pFwotK/0/by2Kd3tr2cGwWvXnxvDRAYafnqt1
U04YY/ihkMleNvZphkdlk3ydpP4xLDFhMJZtzwz/58PJGRoeQ6wM6ycSjwJf
sDPMFMHxM+DYCoZ/5m3ZpLKCG/D4ZWRu/7iK4aDFkkTOZ7wMa7T/92RodjXD
RV6U4WAXfoZtr2Zscr0nwHDuoZQz41xCDC/oJusveq9h2P2x+T/vp2sZPld/
u+mkoDDDZQn/PZ1wFWH4r0n1aNddUYYHcqLNjrGLMzyaP3XHlyLB8G7l2JXL
d0kyXLfrd81ZJimGNU99fVF2GzvqX7LqZ6o0w44Wj/P5Z7F5fqUWyeXJLGnf
ir8zLutx/+Y/Kc8xbWBY5K3fXMNT7DInz8pmx40Me/zqepsyhz3QrLhTMVeW
4anElpa/1nIM92VQ/ySyyjP8Mc9O++dTbJP4vGg/BwWGb5S07q5dvonh42Vu
WrQ8bG3RkluFrpsZngxI02zk3cKwbmrTR8ln2O5ruqcNPbcyLOBhLn1lpSLD
bx6rnsjIx5bNPqb8RkmJ4aedyzZaRGFvLZ91ff0dW26jSsEFNWWGPUeTOY6d
xU728Lht2YHNuX2fgaaKCsPz6enjkVHYHXdNRgq+YbMLCg8ybVVlWFzRcbNm
DHbYk7d+0a3YDk/9a5U3qzEstSfGp+oMtnJALW/IF2wV5dBZHmV1hp/4es2z
n8MOEoheFPyGLefBZc6jpoGvL156RTIGO8W+YPJiC/aiJn/GgJImww9P37Jw
jsI2O5akU/gd2324zviImhbDb6uUKdvPYvNbM2UstmNnG8z/+ay8jeEtrfvi
LsdjK41z6Dz+gX0sqG34h7o27m+GSC/LRWxF9Zj2bd3Ym8zURt+r6jC8ht3S
jEjANtt8MbO3Hdv7n66hp5YujvfOzTM7ErFHlpk/1e/Gfuv54Ymkjh7DbSpR
T4UvYAefOFYb0IH9z/+LwjNNfYZr6t3jeeKwY5ucVKg/sMudL/2Z1DZg2Nhi
8smTBOxnP8pfOPQucYBr5wpRxPAK8ysxbWbYae192p1B2DZyH0dGbmJHmI5W
BNRgvxe+d5NlAnt33olTb0QNGd4vGBv71wz7vLJConoAtqIMc/FgOjZv4/Sf
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
DhUN9kss/NDtZ84S//+XE8P/DyhFuMg=
      "]]}}, {{}, {}, 
    {RGBColor[0, 0, 1], LineBox[CompressedData["
1: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
N7v9boxh2EpY98zn8qo7yOdW0jTbKVKEadaPSviWkLkmMirkiqTp4mP7u7hX
BuW33Kb+j2EbYZHqo/9aniBXufrUddFkCXtNDFSn/0Me61LdrVq4nfB8cnf3
Xwc5wqPZlOlkZnnCrUVOBj+eIO+ML7pw1EWB8M3XPfua1isSPlHloUctQjYQ
fX27zF2J8FxQpm4HtzJho4zOVslS5EOCgwumPiqE+b2spFI3qhJ++0gzMrsE
eXvecfW3amqEn/Svk7U+h6xSs+T+6iuynKzGs0QtdcI+U2kbjscgp3l53bH5
hsxufpCkq6FBeDkra+b0OeRv93ZOPvuCzCog/JNBRZOwuCpNSfci8snH1Ucv
9CC7PAlsUlfSIrx1/8Uj9eeR1YOauMM/IWuoRyxxqWsTfhzgu8x6CTmE/8Ka
wBdkOS8OKy4tHdS++JtUyYvI6c7P5pK6kdd0+bLH1HQJF5y9bb3nHLLl8WuG
ZV+RD/1q3nFMS49wdb26vXkMMp8DQ/ZaH3IeaXm6XV2fsHLPwbiUeGS1mQ2G
j4aQj4f0/hrSNkD5ZouMMCUhq2pf7NMfRFa01Jr6oGlIWJDVxtIuAdlSKSln
pA/Zf8XI1EfPCM33bqXFXcnIk+usnpgMIlf7fHwsaWhMuFfj3BPhROTQyONN
Qd+QVwI/KZTqmhBufH8onisOObbTVYMyhFyz58r0nAGJ8A7rucePE5BLh2rK
XUboHOTezyYKhNmsUi/2WiJn9o0a9IcgO8q1Tk7eQo62mKoNakT+IHz/FtMs
8r6iyDNvRU0JewrExv61RL6srpCsHYSsKs348mcWMnfHwvSHRmQ+/Yvyb2aQ
E4Otz8tImhFW8rj77ZoVMhu3hIVOEPL+1A+tNlnIXY38+47UIb/7lMSxbha5
Oz2n4r6YOWF5oY7Q47uQZwIMKW+CkL8d19fkzUQ2px3W7qlHHp17Y946i1xo
lU/uENtB+OexhvO21sjWdqfKWoKRx8ac585lIjPuOUgrrEc2PM38sn8aeeJE
D8SJ7yTcp9XW5mGN/CfX3csiGDl6VFok5zayUl9UK2sDslMBZ8HAX+QXupXJ
41t3ETY9zhTOaEPnxKjTCeHInrSkOOkc5HcDb7PHGpCzQb5HZg4502k7/2EJ
C8I8Rm7H5GyRa4eKeviOI98kpe/gyEEeCyxrDX+P7OZy5MDUHDL7P/PF6xKW
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

      "]]}, 
    {RGBColor[0, 0, 1], LineBox[CompressedData["
1:eJxN2nc4lf//OHAjyig72UKy9563UWbGcTiHlmS/S7IV2hKKKEkSWrLSEEm8
EpmVnRTZJRGRlfG7v9fv+tzPc/9zzuO67+v1ej5f63mf6zrbPY6RvBjo6Ojs
Geno/u/z/1+u2P++7Z6gbypapxK+3M14bS+NBYs2ypStgTXcOBwCVsF+z0Wz
vy6D230NsZd/wXfbTpwOmgDH6+w9JtcFdt81vX8fAqf9CXk3XwDm1Dx4u/s6
OFJkLVjlDFj6FsPLj/5g9Zfz4Z/IYOXoO1quGPhYd9FhcTnwkSF33/eyYN8p
nqMnaOzBfCKsUwZM1tp9KW4nWC+tv3haCszswrGMxMCMHjVrR2lMFxDKKETj
pQtf2ENFwb9KH4rJitCMJx+266ogOKsrMPkQH1g4m02bk8YZ/g/6qnjBN9a/
yAnTOFnWoq6bG3w2WmTZhpMmPsvy7GUOcAy3k8UjGp98GHeNmcYhbbNKbzaD
vXc0HdZiA4/89mQdZaUZz4r1klQaH7TXXJtmAfcLtN67Q+N9I/42djSmRman
F2wCd5vpG7vRmLyle3QTjdt7AhPLNoId77Kpe9O49eiDz7w0ttMxOf2WGdzC
8FU6iMbW78Pei+PO9lCRtzIeqG64wRXykYmKBSdJqztMfq/e7VEoGIP7968p
pavFk9W1ChZvFHC36Hqz5hrNVJstDPp82UDFAs6s1gi6zVbXvInaEo87rQXb
74j9rcYS+Ut1cC9ttheKWpuvNti+hyGNkYqZiSob8EksV1dMfM8zxz04c4cx
++q/ap0XZ+1nGahYRmCX8O+plWoNm/JMB9xlq5y+2lHr1Yqhktps9FRsW7Rw
QggzA6LrDp99SkfFvpB71W+kM6BOrZbHbrgNt76S3y/NiE4shsjkr1OwN3sY
jhprbUANJ98JWK1RsE/3rtVuUGZGt74Kdk+vUrBRyUl15wfMKMDwWEo6bjfe
Z+v6QhsR3zo/248VChb3ep3BdW0j8jjrtxL7j4JlRT2Vpi9iQZrDr8uVcMcs
hBQ78LKiTebcod3LFIzLdukJ2wlW9Jjp1eQO3FtO+RWxmrChlTj2b7WLFExj
d6VnTxU7Skt6/IZhnoItXbm0pH6eA/lNM8bk/6Vg6geRzbkeDmTgSNUj4U6N
f2a0zMeJhrnpn+XMUbBc8ZZgeV9OpJJGuofNUrAIRaXKwY1cqDnzb2zMNAXr
+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
jOPeLVWTPbaNLOM+135Hmd9gsTpee0zZdgMVyZA3lTWkzVe/YX9+8jbuPGct
P6PWuerFwTP1U7iTpw+pCHz7U61UZs+DMVGRW27Rp3PPp6u9EkUOXsUtJHdk
5d6RX9WZhybyh3AfoNIza7uNVbdrvZxXZ6YiJq19YTGPvlSzsF80vYD7f/83
xwbJV7ppHPZConfnRnBRwvSOSBoLaiW+FtoEdmBzYzlK44sDO52raDwX//aX
Owv4w7dloQes4A2lDT4LNNaPT3tmyQbO01CzmaDx2Ut+J1Q2g7XVe3oqOMDZ
saXXP/LSPF/X2LyTD3x4Qz/9aRpLn2UOUNkKLoym7L7KDy4PWZonCYJbPQyp
3WJgOuM6wT45cJCjeHagMU08H/jKqpzB3+67fEjxB7/++vC/tRgwNSY1Q+o6
zficaGpsfQQ+MnArXhuBgx9Et2l2gxPf5W+r+EkTj5ClCscETfuBoxaeNJYU
FA/f8gtccfR6l8ckeJz3dArbNHj3YWf2/X/BCuV/JJ/SmHtzsv7GeXDfiyb/
JzQOYcUamRbBd5/IxRYvg+OYG24z/gMH7PUqpdJYjyl7hGEF3E7lM6Os0sxX
0VO3QhpnMTgE0a+B/QrjcwpobEcv85JuHazhUtfqTGPBAo8f+TT+/5cr4f8H
feDKug==
      "]]}}},
  Axes->True,
  AxesOrigin->{0, 0},
  Method->{},
  PlotRange->{{-100, 100}, {-60, 60}},
  PlotRangeClipping->True,
  PlotRangePadding->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{3.5140140401954975`*^9, 3.6327235620648537`*^9}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[StyleBox["QFS- Quadrupole magnet",
 FontFamily->"Courier"]], "Title",
 Background->RGBColor[1, 1, 0]],

Cell["\<\
The QFS is defined in drawing: 8088-2408-3 
(http://cern-accelerators-optics.web.cern.ch/cern-accelerators-optics/FTN/\
8088-2408-3.tif)
D1=94.6 mm <- the length of the side in the square that encloses the chamber
D2=119.65 mm <- vertical dimension (=here also the horizontal dimension)
R= 17.5 mm <- radius of the corners\
\>", "Text"],

Cell[BoxData[{
 RowBox[{
  RowBox[{"Hor", "=", "119.65"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Ver", "=", "119.65"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Rh", "=", "17.5"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Rv", "=", "17.5"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"L", "=", "0"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"TILT", "=", "0"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"D1", "=", "94.6"}], ";"}]}], "Input"],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Solve", "[", 
  RowBox[{
   RowBox[{
    SqrtBox[
     RowBox[{"2", "*", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"x", "/", "2"}], ")"}], "^", "2"}]}]], "\[Equal]", "D1"}], 
   ",", "x"}], "]"}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"x", "\[Rule]", 
     RowBox[{"-", "133.7846030004948`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", "\[Rule]", "133.7846030004948`"}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{3.5140140524767475`*^9, 3.632723562164856*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Show", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"ParametricPlot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Ellipse", "[", 
        RowBox[{"x", ",", "100", ",", "100", ",", "TILT"}], "]"}], ",", " ", 
       RowBox[{"-", 
        RowBox[{"Ellipse", "[", 
         RowBox[{"x", ",", "100", ",", "100", ",", "TILT"}], "]"}]}]}], "}"}],
      ",", 
     RowBox[{"{", 
      RowBox[{"x", ",", 
       RowBox[{"-", "80"}], ",", "80"}], "}"}], ",", 
     RowBox[{"PlotRange", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "80"}], ",", "80"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "80"}], ",", "80"}], "}"}]}], "}"}]}], ",", 
     RowBox[{"PlotPoints", "\[Rule]", "600"}], ",", 
     RowBox[{"PlotStyle", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"RGBColor", "[", 
          RowBox[{"1", ",", "0", ",", "0"}], "]"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"RGBColor", "[", 
          RowBox[{"1", ",", "0", ",", "0"}], "]"}], "}"}]}], "}"}]}], ",", 
     RowBox[{"AspectRatio", "\[Rule]", "Automatic"}]}], "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"ParametricPlot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"RhombeCircle", "[", 
        RowBox[{
        "x", ",", "Hor", ",", "Ver", ",", "Rh", ",", "Rv", ",", "L", ",", 
         "TILT"}], "]"}], ",", " ", 
       RowBox[{"-", 
        RowBox[{"RhombeCircle", "[", 
         RowBox[{
         "x", ",", "Hor", ",", "Ver", ",", "Rh", ",", "Rv", ",", "L", ",", 
          "TILT"}], "]"}]}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"x", ",", 
       RowBox[{"-", "80"}], ",", "80"}], "}"}], ",", 
     RowBox[{"PlotPoints", "\[Rule]", "600"}], ",", 
     RowBox[{"PlotStyle", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"RGBColor", "[", 
          RowBox[{"1", ",", "0", ",", "1"}], "]"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"RGBColor", "[", 
          RowBox[{"1", ",", "0", ",", "1"}], "]"}], "}"}]}], "}"}]}], ",", 
     RowBox[{"AspectRatio", "\[Rule]", "Automatic"}]}], "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"ParametricPlot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Diamond", "[", 
        RowBox[{"x", ",", "133.785", ",", "133.785", ",", "TILT"}], "]"}], 
       ",", " ", 
       RowBox[{"-", 
        RowBox[{"Diamond", "[", 
         RowBox[{"x", ",", "133.785", ",", "133.785", ",", "TILT"}], 
         "]"}]}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"x", ",", 
       RowBox[{"-", "80"}], ",", "80"}], "}"}], ",", 
     RowBox[{"PlotPoints", "\[Rule]", "600"}], ",", 
     RowBox[{"PlotStyle", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"RGBColor", "[", 
          RowBox[{"0", ",", "0", ",", "1"}], "]"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"RGBColor", "[", 
          RowBox[{"0", ",", "0", ",", "1"}], "]"}], "}"}]}], "}"}]}], ",", 
     RowBox[{"AspectRatio", "\[Rule]", "Automatic"}]}], "]"}], ",", 
   "\[IndentingNewLine]", 
   RowBox[{"ParametricPlot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Ellipse", "[", 
        RowBox[{"x", ",", "119", ",", "60", ",", "TILT"}], "]"}], ",", " ", 
       RowBox[{"-", 
        RowBox[{"Ellipse", "[", 
         RowBox[{"x", ",", "119", ",", "60", ",", "TILT"}], "]"}]}]}], "}"}], 
     ",", 
     RowBox[{"{", 
      RowBox[{"x", ",", 
       RowBox[{"-", "80"}], ",", "80"}], "}"}], ",", 
     RowBox[{"PlotRange", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "80"}], ",", "80"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "80"}], ",", "80"}], "}"}]}], "}"}]}], ",", 
     RowBox[{"PlotPoints", "\[Rule]", "600"}], ",", 
     RowBox[{"PlotStyle", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"RGBColor", "[", 
          RowBox[{"0", ",", "1", ",", "0"}], "]"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"RGBColor", "[", 
          RowBox[{"0", ",", "1", ",", "0"}], "]"}], "}"}]}], "}"}]}], ",", 
     RowBox[{"AspectRatio", "\[Rule]", "Automatic"}]}], "]"}]}], 
  "\[IndentingNewLine]", "]"}]], "Input",
 CellChangeTimes->{{3.5140140475548725`*^9, 3.5140140486798725`*^9}}],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {RGBColor[1, 0, 0], LineBox[CompressedData["
1:eJxN2nk4FX/YP3DZQtaSZMuefd+3uTnOOWMpUkoqIYoUSpH6Jrs2EZJKKVsI
pSwlNSMkSrYIJRLZEoXsPHOe3+9p8g8vc5k5M/dn7s/9vi5S7n4OnsxMTEyN
LExMjO//72sH/n8/GVToGL9c2f7Xx055B/73j/smWn7MLpOu/prV+WuJdEyV
zZNvC6R5Y64frJ0hLcar3nBlnDTHPHr5eTdpW9bYIqEG0gKv4n1qKkhn7zu3
Ye0D0okbUhRjb5K2f3hLNfs86SvzLq/XBpGW9bCtKThI+uID2dLvO0hbCWzm
2WpJ+rzS8CyHDunrUsntbtKkV/SOigwLkNZXUrfnZSI93vRIJOanw18zJe+1
UftCutdg8mjAO9Ib55/8+f6ctPSN/cdmc0k/GK0P3ZdCOnav65+JGNLIg959
0oGkrYUvKYd7km4zmI7VdSStoW/dF00h/W17XSq7NumDW7WtZKVIH17ce/Ea
H+nXbx5p6q5s++vfx8frj4+RDjJ2qv/ymfR/ZaEud96R3iaQ1L9QTvrcheam
mDzSZ3vmCotSSLdut53kPE8674zLu5Kgf84Xtuf6iidp+6zwN0GOpDfdTxqN
pZD223swY0aT9AYN98o4KdJxX9HmGj7SrkW76Uor9n9dpKPk0PeTdMu1ga0G
3aRt178tqnhHOvn4LfaectKuEcoTO3JJRzweQOZSSJ/ELoYZx5DGR3Yr5geS
/jS5rqrcg3Tgo9hfYttJH76kGV1gQVrNEuf+rEHaRjR4zkCS9FDWr9PDfKTz
xPI++y3a/bWuUk2c9yfSrpMl8mllpC/LyA+eSSLtHT8SUBJA+vvTyH4le9KC
EgFSS2qkKSO9MYG8pAWOy7Yoj27966t6FUOm9aQflSp+u5RNOixgNFcvivT2
6yo3z3uQrg6k+AqZkx5MKORdJUk69/B4wubFLX99JPchTHeQ7pWtLt/0lPTU
nkLh6CTS5Y0/LKwCSIfm5SU/cSD9Hcze71YnvbROvmUvL+ni9G/Pbo3YktdP
kXwbVku6rb4opzqb9JenwocpEaRTvrXOSLiT3n6S9+E9c9KFrySsXSVIl9tG
FJ1ZsvnrgwkvFls6SVcJ2grGPCUttbzbse866U0ZpqeDT5B+H3nS5+h20uLS
EXBbnfRReX7kBDdp30O/OHNGrf+azyPn6YY3pN1uP9HuzyZdbGrWsSua9P0b
d1xXHyBto7W9ZJ0F6bjo7rE9EqRbzQftbBas/rrOkBpyvYu0y9ip+E1lpLO6
mfxYk0lfuuCiKXec9PFUY/GxraTX/DjSJqBG2oCje1eEKmkP2S1dUyqkX+5V
7fmo/M/5GsaGbiuS7iz0XVSUI33/mL+MhRjpD7G9WU9ESTPl2SvI/WPnPg1V
DhHSvNt/6b3fQPqkznFr53WkKTMBx45zkXb3WH9ojJN0eHPpXq9//OrBHN2F
gzS4npOwZift2iApWMNGOtToFSf8Y0yQbVqXlbRZ3cW3Usz/1ENPpTJ1Femz
GQ2lG/5xKr9ffgIT6Yqz/Ok8//jzSNH18ysobtOp/3Httm/I4q7tsSyEp7v5
XISEfiBiNVPhIcsoHrZ1L7bf+RdirJV8am4JxceDtxlKS04hzmn6vicI5+zd
k2cZ9wc5zd15YHwRxftLjRvdKmeRm8Gndx8mPHlOPimsZh4p/y5qN7CA4ocL
LgTuyVpEura/sHQl/HCgMznr0DIyh7sYfZpHcZWSY813OJjA4NY9ueY5FNcb
P9MomLQKnDgooraEPR9q81lvYYagk/38tbMo/ire4JDfCjOU2m1erJhBcf2M
Zji8jRV0WQtacqZRvF5cWjy9nB12HNv6RoawhvVG23Hr1XDiy/iLO1MoLpon
HNL0cTUUP9XKTZpE8XWH02p1hzhA6+jTc6G/UHxV9qmszCEucOjafXJhAsUj
87XCe93XwHH6wuFAwh3slcmrPq2BIimznUfGUfy8m67n3hpu0GivUnEaQ/GY
3b6ug5G8oIo0dqoPo3gbNeiFYg8/DOUKHSkYQvHRIVkNLj4ByBR0WVYiHPgz
HPcwEwCxkR/S8oMozpauxHfjlgBwXeM6IjaA4iPcO9O97NfC0Ah1meMrimca
ra/1zl4H6ckV0n0dRP1yNQ0lBIXAZRVryX7CraufPC8yEIKNR2zo3R9RnMd6
voBjnxDEm3f5dLSjOO0q4suWJQTnfswUv/+A4qlBi6iT1gbYa6FNf96E4hNb
La8aUoRhw89cn6Q3KN6yuNvJhSICrx6GjrETlg8vMMzzEIEjx3b5BdeiuEfn
tatvo0QAn2INcHmN4hLSHaJXa0XAa2H/aYVqFE88WMxpYCUK5RxCFyowFD9e
c73tKFUM9sqEZ/eXEvUy7cvMl5WAe07OX3WyUNw0x1+o6Y0kmPm4tz/KJM7v
GowPf5CErrOH36oQNtpAOzvfKwmCGadLZDNQvDyEcmbVnCScH7t5QfAeir+R
/HzlvoIU+Id/0pxKRfFDJSOBB6KlwCx/b/iTJOJ4yGwPp4k0fF5xkdGKRPGj
P1vWzSXIQJm7oZWPK4oXaDsHr9eUh0SVxBQbU+L8aU3NIacVQFLbvPi8GIo7
PHzQdeiIEmyZrn6yao6OX9K9Wm2wXwWUp1LPffxIx5Fnnp4eAmrA5Tx1YkcZ
HYeWEdPd6epw4YzUVp4kOt6wTclt5I4GPOtMn5QOoONd88uONEdNuDA5998J
OzoeozH3o05AC7iss1qk1ei4TWrDqEq5Flxe3bTtFA8d/yWrk9rupA2FoU3F
nCM0XPCN1Se/ZW0I05Prn3lDw/t+jSf7J+rA1H27GaksGn7qVtdOV3Vd8Aqd
054Mo+ECi9vKdlTpQuy1GRMpNxo+XBJLE7PSA4eDbxUvmdLw5fj4up42PXgT
MNm3TYyGT1gpdJ931Adk6GYNtkDFL421+B5o1IedwsKXvTuoeAute9smewOQ
iBqW8C+j4u+zFqvUagwguiD+2uNEwjuwH0NgCD9NynRT/am4mgev8d4yQ+Dg
1Ervs6PiY/HDTqiMEbyKD//toULFf5YdOF14zQhUHTfzWa6h4gqyp+w2LhuB
Qds9vv2DlvjvDxXPXh8xBkrFLUOpakv8xSRbDv9HY2DqHVaHDEu8PmemW8vA
BPZiPFy3zlni1SJanO5pJnD4U9QjBxdLfC3tQlnTkgmccjkbWmRqiVfGHrz5
wMkU5G9b69iKWOLSsYPaLs9MIVr4SDFljoInVsu8GBMwgyi7A8JBbRR8pyb+
Tdqf8Fhn1rbHFFz2pcOngXoz0HuTuXL+KgVnY+ajCEggEONCNV08SsElL7xB
CgMRuKBpRH9nS8F/efCozNUicNmn8DRFhYIXd7x9rrYGQN1t9uofDgrOdWup
n0kXICIx+ST7kAUeJP7hsNsegKAwLlOHagu8ckeWkG0kwJH2JVXqPQt8w+Fg
mbcPANZ6UUeTQi3wY49NjNc0ATiVuF+W3GeBnxXuaX7xB8AO+TDHYWKBr9nL
s2AtYg7fI0VtVIUt8OzL1yP1wBxCNPtqZqfM8X7KuckOD3OoFVnilvpgjp/h
YDUJizaHR9iYftQjc/xSR/yrY3nmYH1PS50WZ47LaQdxhLw1h4HhP3aFvuZ4
XjBV9OioOUj+jN/hYGOOB/zXfzGOxwK41c/JbVcyxzunLCi/VSwgRZnSFcdu
jrtN5qUEbrUAubjopwHfAO9Qrjjb42sBB9QlDhS/Aly5mlP5wWULML906ZdG
GuAulTlnI/MtoElmiy1XCOAxb+hSLXUW4CpzpeniPsBfeZQHbf5uAXFfMg3o
RoCvBOxOCWKlgH8731HXjYC/TC78tluSAl/X3ePyGUXwh/68EpvNKECdqm99
n4Pgb1voBsm7KZCXPjkeegjBa9udn0qcoIDdm9rWPEkEnyj/4xgaT4Gdhyzt
r3wxw6FXvuVOHgVunz2SNJxshmfFJYfEvKbAgFuicqK9GX5RRpLjwlcKxGPu
e/7wmuEOC35H3eYpcDqp26G51hTHD3G+/y1oCbV9TN88o0zxrrNSW7xULUFo
Rfo1ammK5yTuNhCgWkJmwoR/xpIJnnG15Z27iyVcSztYXPbcBHdy+3T74UlL
qJE5j1FOmOCVky4h169YwszJHHEJNRM86N7UuaJsS7hkfkzw8Q9jPPlJqXZ3
hSXsjxxoeZFljN8urRVJ+mAJycCsFHHAGJcuqlXxGrEE7hP1xGZpjIvGtJwt
X0WFyJNXy23ajHDZoNtPbISp4DLBVBOfaITLHev8zatKhVN9ote32BrhPdqH
wJxChaktPauqOY1wDc8q80e7qHA85h52/o0hfv/DgfAAHypoGPBRa8IMcb1L
bruuh1LB3l3uwHPEEMfPxzVwJVHhEcsgqjhrgNPOeLW35FBBIOB+2ECRAT5+
naY0VkGFtj382/f4G+A1bbml3o1U6Hgu+wNVNMBPWTmlq3yjgtm1r+IT3/Xx
Adcw+p5pKmSZ3E4fyNLHzYPmTcfZaWC7h3XcYb8+bvt9dlXFRhrsnFz3IVhc
Hz9eZxvFpkyDNObGUOF2PfyCe+3N/0xpYHNJ67V/oh4e/VLhSPBWGsx+TXLZ
4KCHj7X22vW70GDgYfpL3TV6eJSa6l0/fxrozDiV8dTp4lqL9h3xoTSoKikP
2hemiztfMrxde5UGOyxELy0Y6eKB3nzyh9NpQEdl9bfP6eA2X2ZuPi6iwema
jjzpxzr4beUft1he0YCvQrfsgZ8O3p3O94y5mQbZoVeFItR0cPc226WzPTT4
ryLFtGVQG28wvrF9+icNSo6hS11Z2njJ6647iks0UL2TEbnHRRsf7wgrsOOm
w/2UJRclYW08TVfeb1yEDpHcTC2P27Xw+eGJEWcFOtydKeB+EqeFNxw3qn6g
R4dNe1l7j2zRwmdQnv5GCh3SruxmP8mthbuVLjT/Z0+H/QbOU1M1mrjANLcm
iwsdwvawnFGL1MTX5rncOXyYDt+md9X1mGjivNGeWfeC6JDD6fjIel4Dv/kr
ZAWPoIPvqP0IyzMNfO5z8iu/ODqcsJwd1Tmugcc5nfPtu0WHz0Jo9CYNDVyb
GvfS+j4dVldGN7E0q+NPBzu3HX1Ch90Tp408LdXx8ZPXH4phdPBfi7cZVqrh
+TxNrI11dGCX2cu0rKWGW4oPjqi30cFN3mqvbqEqPr6uLvlmDx2wGm0XThVV
nCnX50HaMB1St58cf3dHBT99e4wdnaID8mH1YxZRFTyrZ/4x+zLx95RfLEqX
lfEdGy7t3M+BQvTWjoUfK0r4/s+7HtqtRcHfll9O5qwSrmdPm3AXRaHTIK0b
HVfE2UdfNbPKobBa+Fzt18OKuPehjxxNqigUD5QQe5QCPihpUySpj4KH3cj+
uK0KuM06pU5eQKHrgd+jzW8347vb9qVpoSg0/rGJf2iyGf+gLXu3yR6FCzrB
9/LK5PEbrKsj85xQoPFmOlnoyuOJ/eLH1VxRCG+XS6u7L4d3yuIvpbxQiLg6
K1QtI4ev1qxP2uuHAouxtERhkiwuf+x721IgcT+hVm91OGTxUcvgLbQQ4npP
K3PVomRwiVgb3r5IFK73xG8QnpHGo/Bp6LyEguzco9ITx6XxsP6n5YoJxP0U
vl84OiGFD89mH1JNQaHKgdK084AULtQ82Rt2h/j7YY72xz2SuPZiR7NRJgoj
vnI+y/aS+MGfwnXGeSiwv5c7cPr6Jnx1cZ3I/YcomP1ZMNZMkMCt11qdqi9G
4cTCOe3aQHG8y7oRlMtR0P2eFUvxFcMt+fK8V2EoTBUEs6fZieJ9LpzAXY3C
swL0rbaeCC41eUXl3RsUOBKf/S5U34jLrppO525AYadjhwHnOmF8pv2/lcBm
FNSWUr5acW7AkQyfa4faUODu3tFexSqE0yut7wl3ojB04+Ww2IggvtjVsX74
Mwp2JvX79/atw5/IbQq07iXu/3nE1OnqtfhU1YGbr76hsCnAoK3lgQA+r1Wn
OPsdBUH+OGGBbH58W+GD0LphFPgEN0/vFeTDM8zWDmf/QGFNa0CIBzMPbhKe
lyY3TtTHVoyqVM2Fh0uIY/d/EZ9f93mGezwHHntX4dnoJArSw7drD4Wz48v2
G2o/TaNgsOuzgjLKiisPlIRWz6DgHu9i91ybGd/0YPaNyxwKNww/8rxUZMK9
Er58rZlHIcVw17rl7wuYt26ukugiClwL+8NOty9gV/ferNlE+L8Kr/E/NQuY
hGjTPlnCbsjpt+OZC9hJD85oVcJK1NsRX90XMFaHJyUI4Qr7b5PVX+axGwMD
Vw8Q7j3k9+FS+xx2XL7JNJfw5uSYaxtfz2B8Xas9VJZQOKx7Zlq7eAaza5bO
1CCc/8HXcWv6DDZWzvFVh7DGup3rI0JmsLc+uttMCRvEy177oTeDHT62ds1W
wlYXK5Ow+38w84DP/b6EfUIWEj0vTGO26HONQsKF4uOT54KmsYep+lyPCU9U
9G2/6TmNma8/11uyxFhPdesazaexrlN+ES8I/3cqJdFgfgob1WpPf0c49rhu
4hqfKayntII+QvjhQb+EIttJ7E3PjKLMMgrHn0nHbDKexFoyay/LE9bhbj8T
qziJOR8M/aFIuLzIxNObfRL7+i0/XYNw9SKngRT+G7s2+mvYlHBHQmZ3vPZv
rBVR7d9FmAnrVPAX+YVd33Ys5gLhVwKx4l84fmEvFt1jLhOO8oC1tjMTmHa9
aWQcYS6u+wubP0xgp5oKT1wjLOh44n1P7ASmmBuicY+wwijvCbtVE5j12fZ1
TwnfVTsfsq9pDNvN5nvhG+F2fopO8sMxzH1rxtwAYe7JpeH3V8YwsZsKh4YI
B5cFOMKWMazSRMZojLAD7FeRqf+BxVZ3YH8IsznodQ1VjWLL56nWnCtEPU/2
654oG8bieZX3qBC+uyttND95GAMp95NqhNsNne8NnBzGVm0dvqxBmLLcyL1L
Zxjzmh18okNYLOb5N8OiISw4I/urCeHGlISrK3mDmOaAYoUtYZ0KGLt4ZwCb
OGt79DBhLufm6JXTA5irVMKuI4R7Z9wkT+wawDbNFJr5Er6sHbF9H/8AFmDi
y3Kc8EBezTP18H7M0YLlUDDh5BvW0R88v2E72mOSYwgf0f+0ycriG1b7G7Ze
IGzR5vPshcQ3LNq2mfkS4Z/8sT+yP/ZhIeVB7lcI0843OgRb9WGyCZ8WkgjP
BO7YJKH6FXtfvpJ8j/B7wYGnCZxfscU/KmIZhDMfn3RY/b0XQ05r3skkbP8z
OWriTi9m44Sn3Cec49k5+oq/F9MKnz5UQLgop8K/cagbW7X6pe9TwicONKW7
B3ViLQfeir8jHCF805dNtxNzKGpTaiCc0HDAKOd3B7bfYpPue8IP9Weax452
YKEa/uZNhEfWSKwK9viIAY3T8ANh12Kf/XHb2rCfacKZnwj7eesqa/G1Yee2
bIj6TDhEYuXPh3cfsEKK44FuwrfOJ1wRQT9gAmviNvQw6rn32Ysss1asiGfe
pY/wFrbVYhXKzVizeKH3EOG95U2DLsNNWPXJexLDjPXhd/PJqvtNWJjIhyaG
z3eq2tClmzCwmVEZJRy9J3cqU/M9xmWvWz3GeF41JpdH8huwcEGZAz8JV6o3
yWgoNGBhm+1XGF5kmXF4LvEO6zX0Up8gfDzfsqh5TT12cX2872/C8UId6IaY
Oixn+6kZhgtCfXr3MtdhjV/Tzk4SHtqRwDc0W4uN/MwPmyLsstRzdHmgBvvT
9NLrD+H/DgWwWbrVYOxJ9z4xfKOZ/faFz9WYd06VzQzhD1mq7wRbq7DymhqZ
WcI2W88oKeOVmEt75eM5xnrawe3FY1aJeUm28Mwz1qPz7azx5zj2Q8v0IMOp
DSHmXn4Y1lgkw7dAuLvzboWKz0vMUyJtP8MS31/p/zr4AuvZfrKA4XvL7Gqn
XZ5j/Ru1zBcJ93Ep5po5l2N38oRjGJbdYCPLsvMZdpPVuZ7hbPU4kctbyrCH
gmPoEuN+jYuu2VuVYhP1ZpEMK6Kt/OupJVi19WgFw/muG1bfMXmC+dzfIb/M
WO9HDMPdDR5jbpECuxhWD96zJK9ThKkoK0Yx7B919tSo+iPs861bjxg+IIMM
7t9ViIW0e3Uy/N04ontoaz4m+Sl+hWGvHbWtx2h52LvcdTIrhEePrKmfN83B
4i1+URj2jbLDI3SzsZNZiu4M/7qdWMqtmolFtlScZfhE6cf8a7Lp2Ou6vGSG
/7wXzZAQu4tZXprMZ/j3e0zLbnMqxrbhOs7w7Ap9k5tQCsZ79Fozw0saTWsC
2JKwg7E/exhmq340wTkch/GdSh9lmF++sk61NgbjVy2aYliPP4OaYX0O884X
WWA4JSdmvI3HF5P482WZ4d7gUre2d9qIGhdBxnrOmM+ICj2GpA4F/e/xZ+M/
ZiX6QpGDV23nGS6M/bxpgeUCcpn1v0mGW9YfzBhNiEe4LNhHGH7X313amZGE
dFuNdjP8+oljfW1xCsIiptzIcGV4Q3dJTSoS9LTmBcNfctJnt/ncRTQ3Pc9l
eE+8C3NdQDqiZr8mkeGOIBFu+C8T8bApDWZ45/729WWR2UgDf8U+hltpCZvU
YnOQ/XfFEIbt1bYqZl3LQ/jnP4oz3LCeS1vsTj7SLv5zjlE/66Uak8TsQuT+
mv2tDEt/l8jB9xQhWtRtIQx/7VxUWdz/GGmJb7Fj+G5DV5G+xxOEll0owbB4
SfLzwiMliLdaUDFjvX3OOQEj/qXIzN0DZxi+mepQI3eyDFnfnYcwLBzJ25h6
9hlSXGSFM9bz2u3RfRevvECM6t/cY7wPLd6l6GDOSyROqsaW4cTQ74WUKgwx
0sicYrxfXLsyTJcXcIQ/gMuY4YuRLFxlGlVI68WgdMb7OhInajrwogphvnFB
h2HrW9r+62yqEZd9IVWM93vN4wPtfp41yOxq/g7G+3+5pypd4WYt8ran9ROj
X/wY+dS2c/MbJPbmwg6Gbf9MckQVv0HWcLG/ZfQXHh5Zv6/v65Aj7FUFjP5z
xSjS+CbLO6TZt3sLo1+9sZYeidJrQqbqE2dHCJ+yL2QRP9uEvCz9jjCssNNI
vLiqCTm3XSzyf/ulm4N9n30z0nBHnYXRX61OhZea+bQg6Sf+fOonXJ/VFz6T
9gEp6GSdZfTr0w98U698/4CcLgrnYVipaL5ETrUNsdP9tonR3y9WrB3eXt6G
FCK2xl2M/tVqYffoQzti7vjStp2xHpkyRL05O5Ef6tJdjP1FJDY6lWbTiTz4
ONrE2H8ObTwsLhvbibTar1S/Jcyspbmph78LWSlhyaojbHAAk3YU/oSwWYRb
1hDOqvmkaL65G+nm27mqgvG+bsPyJLy7kV0ZFe/KCcOXdOXFvG7EhfnotWeM
9fHHW7VM7QsSKPVAooxRf4VZDVW9HiS2I5X/MWGEypV6Ob0X4WlwPM7YPw+u
+W/vmapepH3QaW02o17NY2KH+3sRn9qsh4z9tmtf8226/FdEpVWsj7E/Bwam
pDHnfUX0+EPlUxn97758xqmiPuL5i6jGM9YfFyXPA+9HVIxuawYSThPsid7Q
349IcH1xPEFYftOZA/WrB5D81eOBjPlCR+eJmIbdAPLyfNhDxvxh7yITt9A9
gLhe8Zo/yKjfY5YTCQvfkXkms5mdjP7kXG2K6w0j63hXxTLmn3OeriIBzsPI
nBDNRoswu//iH7mQYcRQZw87Y14SjNJ5dKlmGLHOmT6uTFjjYab0rh0jiIjL
qJw0o7+yRK3+eWwUuanf+ZuX8f4/oDaLFowhNqJPFb4T85qLnXvk5qYxZL/E
iVjG/Nf/O0Rfe3IMEcsXH+8l/Mvw6W1rw5/IiwOGuZ8Y8+UbpcPBNT8RU4XE
2SbCJv18LB+7xxFmhUaW54TteY+KWK3+hZi0ub1jzKdPaPq2rAaTiPCrYrnN
hCVO38L2oJNI9gtJJlnC5wtWtJ44TSLzZ3o/ShLeK/hmo3vwJDJgsuecCGH2
PqdBrHwS0XhiWshD2Pns6fAzplOI2cWSS5PE/M1c/OLpb4tpBA/2pjLm9W1S
lnJft8wgXmjmE5Twj8AX2Tf3zyC3kjXiLQlHv9NT2HFsBrG7dd0bCFcEKSrX
Js0g05XTaw0Iy7/n1Sz4NIOsdvqNbCY8f7rTJNh7FhkyH2VmI5z5wXeHQNQc
MpvepPKSyC9/Ym5EmFcsIBPuXPybCR9zOrSLo2cFYRl9ZT1K5KnTXWZOiqrM
oLhr8eoBIm8VprT+2OPKCgLbjr9/ROSx95dkKyqPsoMyV9i+n0Re+1W9cav3
fQ4Ie1TA0kbkOSbttyKWz7nAQkPCuojIe8ya0Xb51dwwHHpI6iiRBzlODtB2
zvOCcrq/XS2RF5cCQys2RvGD5cMmutQICkE7e/UUMwTAie1QOf8gsb8uWXqu
PF8LLQ76Sp+JPNqGrdYcr1wHnJj5+yIir1Zmin1Z6RaE1jq9dwLdRD/PjFNQ
GlwP6a9UqGFE3j3rs3qz6KgQGL0TsfpI5OEux2Z2VTZhOGKnXJZP5OUC57kI
J+6N4FAT/eYWkafDwgP6MhVFQKe4E1lVh8LbapsvXDqiwMN8MCeKyON8jQpX
9A3F4Ne+21ZTGAqOi7s2Re0QB8uzGxXeE3me33Jgy4+9EhBxOkG3uYTYfwqr
9504swnQc8O2eo+IPOT/Id7NWhJubDF+GpaHwu7rJyuvNUhCyo3HnUxZRD0a
MfeuPVKgMIQdbL9D5C3BZy0PeqXAfPDYYn8KCuteFqf2ukuD+pzapf4EFL6d
2v1RbkIaGrsu8alfJuYdKOidCZCBG/sOj1dEEfUUyXPuYpaFmsUZ+8shRB53
ylWTjJOFqpceV9AgFGrTdzX/FpCD2nbzegd/Ij+tFPa3pclBZMTA5QQvov94
lbymyspDwoWd+XJuhL95bHz9RB6GJsJS+51QuPBK6HUubAa0b7Iu0Z6oR2GQ
uUj1ZvhR1bXpHkpcPz9M9ZaDAuy0/zzegBDzUZnRUM5HBQhMDdntoo/Cfvk/
ixudFeGuQ3HfsBoKzdnO4bcGFeHMx4mC83JE/XR823N9lMBzfWfZNTEU8lqV
br2ZV4JgVqafD9YS82v78DPrGGU4hdnmPuVAwXBw1/3dXCrQ1rcmy2yFDps4
/diCU1TgAefzcXyKDmCgqyUnrgrv/oSzvhqhg8vbpac6aarQ/vpuUXUvHZb8
/B7tUFEDwxzJodI2OrRLxQeueqQG/EXF77Te0kFjYHfBSzN1YP0vvjARo0NN
Sctjjmp1iC8v6IsopoPKtDznHhkNYK82XhWcSwddYcNfhoc1oFwo4CP1Nh0+
VabD/nwNsIzfL1NwlQ4WU65vuKc0YEhnk8bXSDrcd5Jc8jHShPbAQwOCp+iQ
R9G/IfCfJlwes73704cOR8vSjyJVmuC5JoktxoUO74s8c5+wacE6DV/jt9vo
oPpFMaGTpgXR4lEPRah0sE20eBITqwVp7cy4iD4dOBsfG//XqAVOlyJkWhTp
EJ0YtDgrpA1eD55HqonSgfmi6eHN+7ThvGCNZzw3HURX70FS72jD9Wf+SSXL
NJjmbrC9MaANwgMyuP84DY7cSK78vFkHkjktdad7aZBZWOyb46cD/UqWJ1ma
adA13fpGrlQH9Cz0lzZW0qCgyvri8IwOVPrqK7A/poG5iFCkLqILL3cctD9y
jwbHZwwGasN0AX302KLwKg3S2fdNrqnShadLlfWs4TRIuNNm2MGpB1xnBgJq
/Gkg+SJrcMRGDzzlTtB9XWng61HfEJWoB/5nlzee2EqDctMJ15ZOPTinqpgV
Y0J8vttH93iK6oP602M28co02BqNXAl11wentLaWfmEaJE97KfRl6kPBu9xe
ndU0+Jyc6Dc9QFjnwNm0aSp8w9eOx6sYgEr+9+eWfVSIOTbcdtzXANaunY7+
3UiFH3mC059LDOCnf072u+dUsBMyr5xdMADZFz7Xn90nzFEz5WxqCH4b+19U
JFGBP+K2KzXSEBbmdAI7z1HBN7JBO/C1Iehs7pVad4QKsbwOiDqvEbhsPSuw
aycV8uo/ztzYYQQlGq6tD4EKnjwlG2ySjcBVq+KNtgoVeju++0V2G4FCbMCH
gvVUmFXyV2eVNIbDe+bWOjNRge/h/C1dN2PQO8gsrThqCd+fd8L4fWN4rRlb
09lqCXvs+LeMDxuDuHEG/9sXlhDvc+tqkKYJxAwd7rucZQnVzzZHFAWZwKeF
yKxDsZZw7cqaz5rPTIDfsN8uIdASNv+gHDViMoXBvKoPgfssYWdTq+cFC1M4
N1Va8JhqCRHfPdZcjDCF4ieq24TULOFYlPXw2npTmMuYvSMmaAmLeTFqfWvM
4FylVsOFBQqguzfmG243A6ljj+yjeymgeYX56sdrZmBXa3P812sKbJz+Ib35
oxm0Tej+jiqgQGW/8tiyOALsN3Kt4q9SgH3PKwlxVwR4BL5lbAyiALdzwfmq
+whE7oi8yOJMAf5LN9JEfyIwMu73H6cpBXbf+8nbvQFA6OjqjjQpClysNDrs
bwzgoso6EcxCAa4srbnsvQA2lYblP75bwAWpBy56ZwGSTqdJXq63AK++Lb0X
7gLwCgi7bntgAckHU6+FVgIoBCroV8ZagKz6+kPGAwCXNre3mR61gKJ4Xj47
DnNoSrGLbre1gNiSJyNsiubgyjrxVUXNAuokIvpCbc3h4QrcO8ptATtslnnS
jpqDvavd2Ikf5oBUZDiGXTUHrt8bFazrzEHxdV1ARbE5uKW6Chhkm4N74q2a
m23m8I2TpYspyhwWMq9rm86Zg0LyL0F/V+L3wUhbuIgF2FzuPVJlag71g4e2
SBlbQPRT43FzUXNYe7P8a4SLBXzJZ+YynQbI4XuWe+GcBUQ+FqNpNgOk1X2N
3Z5hAdjWrrshuQDXxC6hga8tQH9vGn93GECnVq+eyaAFBFpVyNgQzy0kdr/5
ay6iLted+Hq1AI49uHhuUpl47s0pW6+sAfBw10sKtqWApUMu16s3CJTt466p
8iOOr+qLQY8jsFvsimJRPFFnAW4BDUkE9mwyynMvpoBi1i7iTs3gwcBVl7I2
CrgG1O0+42cGC5aHhz3+UABZ9ezC5Y3E8aEj8e0bLeHCS2ev1HJTyLMT9Rk1
soSLe47IbHM1Bc6FSbdqF0v45iGqfHXRBA4hW9T/hFnCx99q3PdSTECQ7qDx
Nt0SnPserbtgaAJSiWFbPF5bQv0ZzzK7JmM4m773zt1BS3ijrN627GMMHdZP
a3Q5qKDpsHT2zmpjSNQ344xTpsJnr2s1u1KM4PagX+glWyo8bd5orKRmBKs/
v11n60+Fk4mo76GnhuDvnXPWM5EKJ5bH90+YG4JCuYaodDEVNokEcL9qMgCw
+/Yh/SMVAqRSbIcdDOD+ffNXr2epsKfjeIFzlz7w3JCMpmykQfFA0hURN31o
fa94MJLog5Th8yw9RF8cqv0S7LWPBvjkO0lOJz3Yx/Yylz+MBhvdls8tvdYF
KXYrnr3pNJiR98/RN9aF/rQddKYqGjRYxr2oL9ABjpCLt72+E32USayFi08H
Tm86svnEajpQPMQ8D5/UBlu2Uw0UZTps3x3Xvu+NFkhEslof2UoHe/tIR7EN
WmD22mRe348Ojnfe2/sc1gTMNu11bQId2qJ9mjZla8CV5ILX80/oUCWRzX+0
Xh32BZvcjv5Ah9stjlE7jdXg8t3puPYZOhSaPNnA5KcCnJecS+uEidx5RqHh
c7oSDD4bng01IXJD9/QzthgFqA6bE7i6HwWnO0aua0AeJrhLXCxDUQiukvJa
+1UG1DKdTFoIn55OeijVLgNHjBc3uoYRc9zu4AdKb2Vg2JvSdiYchbq155MV
S2Sg73WzzZNIFMavNnN3nZeB1tCfBtIXUOi9ceLBgpoMlE5tXsdEzGk7Sn8J
/zgpDf99vln7PAMFrfvlG+ijkvBGmkcLMoncoH3JQLdHEtZ5n0utJqwodN1P
pFUS8qYPHGsg5kIXqfGWunJJ6OBVFe25j8JW0QYovyAJ2uaYL3M+kQNLmOwa
5SRhJOvbeqtiFBwOMndZ5UuA3g/H0AbC3jtP+yVdlYAwrTcj24i5VP5+DFdt
oAQIY/mYcylxHBCHbyAB1I6T3keeomB6KeHnRKs43OXieBFXgUJAjlOk9LQY
7PJT8Wgn5uDYb13amVKiUOzC1+NZQ3y+nQ1dTUyiwL/19+5pwuefS+R96BGB
epWndoK1xPErZW77b4uA2QjF2IGYqzmy6l74CYmAvOeete+JufsQ7zvPvhVh
iNhhFrvvPQquggL3NT8LQy9FimOMcHz2u3jbp8JwU3pwaU0TCtTFisqvfsLA
03t82KoFBcy6vMX38waYcr6I17QTz3/VlVMyeUKwzfqoseNHYq69psReFC4E
hYb2pf2Ei642rp11FgIvYaF8FiInRIV+KsrnEoLPbfeum39C4dqGdcoRB9dD
lf0z3xc9KCTH1SjReQVBElKHbYnc8ZgPE0n5ug7+Uz/n8ZkwjYn/SXjxOtDj
pTovfCXm2KJnORt3r4O8t01Uw34UFvK2pc6mroUE2pBYyRAKv+W5EGNuAdhu
ILdgPoyC7vpltaAOfhBUcu98T/iR0Jdx/kx+SOb5fG2IyEU7H12nUA354caH
Rl6xMRResl771VnCC86vucdyCDf2JSXlWfCCyFOrt7o/UXhqZxr6vIEHUm9V
xdgRuSv5ydEv6BduuOtexhRB5DLVZ1IuDt+5wG3H1Be+38R6+h2yeNSdC6Rp
mi9SCTe9a+L4/okTMhUfBJcSua5+8E6a2WsO8BQd2kWZQqE0PT+rQo8D5Hnk
9JoIPxUYCmzKWA05E3d+DxO5UGJ18YsHx9nBu+9TU+AfFDZq/7Zoa2UDpQ/C
D1mIHPlrvf/EDg02yC9L8BGfJXLBDfvU6E4WOJrbaJVHWKe6LFdcjgXUbnEr
6BM5lMvTXrXemxkehkT32xM5NVXVhLuyiwn8/atedROujNdSyGdlAg13pnuH
F4j171gbH0VdRn5tNz03QzhzqOvDXc9F5DH19L5IIvfKsz30enhgHgnQLzMW
IHKy0bG0FiP9WURHcWrjHcKGKRaUxNZpZFpEc1aJyPHdm7jlhGUnkVJu3/Yy
wj/yqhfeM08gQct5xZYrxPtzO1ZES3MIMZgYTGgmnBtUt3dJqAOZ+yp7zIXJ
Cv7v/1nLW93sRv/xmZo7qqdWkTYp+7SGjZn0y5uObyRYSJ+7nJD94B9DSGOk
ASvpV25W5g5spGsUTMujVpN+Vyqb/2MN6Zu7NDb4c5P2mjUOn/zHrEbbneZ5
SJu+CGPl4CddWPVlr4wg6fimFB5nMdKOI9x+tSqkzdw3bT1oTzrwdrdrzjHS
BcfErCkJpC0vRtmll5BWOnjzfGY7af/ozu7D86RLkBucF8Wt/9qqgtXb1oy0
6dmb/S1upENXfU5cDCf9SuLOxnMZpD1CLz6veU3aMUv66sNB0tm8A+H71tj8
Nc14e06hCukBJotMpy2k+7n2VLz2J63VsYmj4yrp3mFe/4IS0leSQgo/dZC+
yHxTsmCO9GBxT6GFuO1fJyg1+58xI21iSOHk2U+afrnnhXs46bvpm7P3ZJB2
XrqRJ1xLet2vy1FqI6RFc5STBrm2/HVExtRLDzXShu7e4lF2pO09OVK8A0gf
XKUwnJ1M+q3r5NGYMtLxrMO8Kp9IZ/pc/BawSLrMJ/+KoPjWv1Z6NOsYDKR/
lE3Yh7mR5mVd57UlirT6cInj8RzSaVdZg4zqSPuFnC1+/YP0FbV0uT88dn+d
H0Q/GqJGWoltQ3P9NtIzjgle5cdJy47qi/kmk7bf6JJ9+hnpt1waHkpdpLNB
xezOEukhsZEsZz77vy4wbjVCpUj/zl406tMi/WVy4cMWCul5d/6zoo6kXz6Z
f1nuSXrVNrkj7IGkT/B7bi6OIR1XdPo/7RTSXSeyegTzSGdG8hemPyctFLhN
iPkd6acX7l+u6v7neudaU3f+JF2PI8LJy6SrZCvv6fNv++sDh4Vr8iRJa7dE
/jmnRfqBaG2lPIV0epHVbPB20nXeX03UPUmnsNiJlp4kfR1rXp0WQ1roTdJ+
nRukTR6rbruVSzrh5Sd7j+ek4/L3jyy/Jc09KDNO/Uz6GWVp1fgYaZ7w/ELv
5X/O1+fvTeN3+OvkuJNxjVKkLSTs7ZS0SEs0IuKDFNL33NiiTu4gvUOod97z
IOmYDQufmE+Rdpsf3XnsPGmflV895jdJi39vYO7PI71140i81nPSD31FVb+9
I/00S/qAZzfpX8tm963GSedm3trZxbT9rzlV3qeZCJC+0bZ+hkmGdJOr9lCy
NukYg6uWnRTSvlqsD886kl7k2fJk0pN0+ZoHNW+DSEuOfjl28jxptg3bL7xN
IS3i+bkwIo/0xyRjX57npKu/PzSee0daM8rjxNUvpKls47SFn6Q1rFp3I+P/
nD+27EjEP54QDE1YM0E6VVbgi+gv0lMU7ZMmk6TTw4Myzs6Qjn29p7TyH5/i
gjq2WdJbEzjGY//x/L0bRnfmSG+rfN78coG0CdvdfuZF0vJWkTO0f7zYZCve
+I9zeru9epZIJ8q+OiOzTDrEK/vKoX+8Y8K3ePwfIzrba7VXSCud0u8K+sfr
K0THnv/j/3+Wv/4fxFTQsw==
      "]]}, 
    {RGBColor[1, 0, 0], LineBox[CompressedData["
1:eJxN2nk4FX/YP3DZQtaSZMuefd+3GY5zzliKlJJKiCKFUqS+ya5NhKRSyhZC
KUtJzS0kSrYIJRLZEoXsPHOe3+9p8g8vc5k5M/fnc8/9vi5S7n4OnsxMTEyN
LExMjO//72sH+n8/GVToGL9c2f7Xx055B/73j/smWn7MLpOu/prV+WuJdEyV
zZNvC6R5Y64frJ0hLcar3nBlnDTHPHb5eTdpW9bYIqEG0gKv4n1qKkhn7zu3
Ye0D0okbUhRjb5K2f3hLNfs86SvzLq/XBpGW9bCtKThI+uID2dLvO0hbCWzm
2WpJ+rzS8CyHDunrUsntbtKkV/SOigwLkNZXUrfnZSI93vRIJOanw18zJe+1
UftCutdg8mjAO9Ib55/8+f6ctPSN/cdmc0k/GK0P3ZdCOnav65+JGNLIg959
0oGkrYUvKYd7km4zmI7VdSStoW/dF00h/W17XSq7NumDW7WtZKVIH17ce/Ea
H+nXbx5p6q5s++vfx8frj4+RDjJ2qv/ymfR/ZaEud96R3iaQ1L9QTvrcheam
mDzSZ3vmCotSSLdut53kPE8674zLu5Kgf84Xtuf6iidp+6zwN0GOpDfdTxqN
pZD223swY0aT9AYN98o4KdJxX7HmGj7SrkW76Uor9n9dpKPk0PeTdMu1ga0G
3aRt178tqnhHOvn4LfaectKuEcoTO3JJRzweQOZSSJ/EL4YZx5CGkd2K+YGk
P02uqyr3IB34KPaX2HbShy9pRhdYkFazBO7PGqRtRIPnDCRJD2X9Oj3MRzpP
LO+z36LdX+sq1cR5fyLtOlkin1ZG+rKM/OCZJNLe8SMBJQGkvz+N7FeyJy0o
ESC1pEaaMtIbE8hLWuC4bIvy6Na/vqpXMWRaT/pRqeK3S9mkwwJGc/WiSG+/
rnLzvAfp6kCKr5A56cGEQt5VkqRzD48nbF7c8tdHch+i0x2ke2Wryzc9JT21
p1A4Ool0eeMPC6sA0qF5eclPHEh/R83e71YnvbROvmUvL+ni9G/Pbo3YktdP
kXwbVku6rb4opzqb9JenwocpEaRTvrXOSLiT3n6S9+E9c9KFrySsXSVIl9tG
FJ1ZsvnrgwkvFls6SVcJ2grGPCUttbzbse866U0ZpqeDT5B+H3nS5+h20uLS
EehtddJH5fmRE9ykfQ/94swZtf5rPo+cpxvekHa7/US7P5t0salZx65o0vdv
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
e4W00in9rqB/vL5CdOz5P/7/Z/nr/wGLZSpR
      "]]}}, {{}, {}, 
    {RGBColor[1, 0, 1], LineBox[CompressedData["
1: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
      "]]}, 
    {RGBColor[1, 0, 1], LineBox[CompressedData["
1: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
4A==
      "]]}}, {{}, {}, 
    {RGBColor[0, 0, 1], LineBox[CompressedData["
1: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
9YdC/vG2JpFvjf/4/0X5z/8D89ggNA==
      "]]}, 
    {RGBColor[0, 0, 1], LineBox[CompressedData["
1:eJxN2Hk8VF/4OHAhu1Cyk33f932OGcuMGWYipUgUbQghtFkKJVuRpCT7Uras
oeaRtaRECm2yJLQI2ek7fb+/32e6f8zM+/XMfc5rzrn3uc8ZqYN+Dl6MDAwM
47SXv+//d+xC//+TYZOuyeM/jv85IPTYqbP/eGSm99vSBt2tn/MHf63THdtC
rBpdpXtL7I3DHYt0i23R6E78STfbCj6+8QPdJOaESoFuuvmeJHu3NdFdsD9c
cOs9ulME05USMuimlN9SK7hEd+KKW/vWELplPUltpYfpjrsnW/tlF90EPgVu
e0u6LylPLrHp0n1DKu2NhzTdf/R9RSb56DZQ1qBsYaD7Z0+FSOwPh//MkOZK
VP9I97DhnG/gc7qFV6oWvjTSLX3zQMBSMd33pp9F7E+nO8HVfWEmlm7MveH9
0qfothW6ohLlRXe/4e8EPSe6NQ1sR2JwdI86Pr3NokP3YXsdgqwU3cfXXOOu
89Dd3lmhpfdn53+ePfnz2cnvdIeYOD/7+J7us3URbnee072TL3VstYHu8Muv
emJL6D73abmsMp3uPkfSHPslukvOuD2vCfknX6TLjT9edFPyozpDnOjeUZg6
nYCj28/1cO6iFt2Cmgebk6ToTvqMf9XGQ7d75V4b5T+U/1ypq+ww8oPu3uvj
9oYf6CZt76psek53824Jk+B/rJ8e0Kr2jyVFhd7e6aL7t6TXWsQzuu+o/rG2
6qT7F07nfXcL3YejY7xi/vH79sEf5v+4nRCxqeIJ3RnkbvlrzXRbuhwJ2E2l
O+3kLZZPDXQPPrD4mP6PxeYmahz+cU6grlf7Q7rHq4ZMI/6x4nwEv/E/9tFV
+DZXT3NEvMv2w17U8qDultL/dY24lNlZ6mx14K0jf+3e235rNIaq/1s4UOqv
h59uFBQlUZuCD0tfr6M52bXO7WY6tfPUn4iztTR/zU9p4MunctblO+v/dU+u
xzq2kGq/SNScqaG5PlsDBRVT+0PSPx3664jMrrY3pdSRUC1zYjXN8c8iv9pV
UVdPH1oVfkCz4pOHc1ubqOaN7H19lTSLNUteV3lEjVotL0n4ay6I1bd8TGU7
u7Z301+vfCxpMgYq/7nr9V/LaR55H/rH+wlVPbwjuK6U5rIB/ugX7VT3Cyoz
u4pptu0hJae8pF54MI5ZTqc5Uky/aeswNZgaF2kSSzNb2qFbv75SYWqv0v1T
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
84du5VCDoZB/vL1J9HvjP/5/Wf7z/wDH0EpD
      "]]}}, {{}, {}, 
    {RGBColor[0, 1, 0], LineBox[CompressedData["
1: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
8e3CP95ewzdZ/Y///yj/+X8AA6zMQQ==
      "]]}, 
    {RGBColor[0, 1, 0], LineBox[CompressedData["
1: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
pYDk4rOyAH9xdLfArgDZDPx5Ct8t+06JoUn1R3NIORSotzP64HBYDJ14sHo4
vgA/f4Sl43nPDlTpzkPrI88pMHpCynvNdgcqMea/91w5BZjfSR0OuiOKSu+3
OcJWTQH9uWWSarwI+mPGdsMhoEDA8hX15rPCKJZYUjvWQAHNoaxYoxNC6OjJ
iqcbXlNgtiCQOc1GEH3Xf8bV+C0FKgrM36hrCaAee0NXzdoowJJQ8adQeTv6
StFlS+8nCjjs/arDysuPftjW8vr+VwoorSb/tGDdhl6TkC6e+k4Bji77jnrG
reiTsXAm7h4K/LpbMyI0yod2qBdtsuyjgA25xc25jxcNDYqnSA/iz18VOhvU
sBndlcP3fssvCoie1vn8MY8H1Tdxlnw7SgE+7pv8PI+50ewnw9XKExTg4pP5
68zHhf4yuPEoZZIC7O2nL3vQb0K9SYk+FdN4fKyFTOQa2NB9rpVynTP4/WtW
ZbjHsaC2kW0ODX8pID6S2nz0KjNaOPc+6Ng8BXT2/dgpb86IylzceJp5kQLu
ca42Ver0qBpfFZ37EgXu6n7ZVCNLh0b0d2rHL1MgWXcf79rQMrIbPeNcvEIB
tmW3kKCOZUSewdaoHPfF6mOTc43LSIHXN5kq3IeQoDeTmcsIRWptpA63nElq
6E/3ZSTfL8TuI+5q2/6Zhu4l5A3/+ZIp3L1H/T5FdywiW77KV8uvUkAmKfL2
9qZ5ZEnmx7d7uI9rXvirXjKPpJ9pDXiAO//Tib270ucRBlMmjnTcKrwOW0Iv
zyN9/rZqT3DrxEneHteaR6T4qa7luC2iahOx7Dkk6Givejtu78vLCZ7X/yLC
OWc+s6xRoFB4cubKub9Il/h5fg7cU9V9e+55/kUk9Ov3c63R8uk173uDv8jr
A+ptW3BfPJ+coLM0i3DqX3gkjjvWXzOB3XsW8b+Yi5FwPz3iF19kPYOUVMT8
8cbtXyEeKUqaQeLPMLWdwK3B0XEhVnYGieDqzT+Fu7KI7OnFPIMU9lY6n8Pd
sMKqIwZ/kAaOjalXcX+Nz+yKU/+D8KsspSXjpsM6d54UmEa60myf1uGu44kV
7maZRo6HMes14g73QDdbz08h+S4idc242diyl2U+TSF/p063tOLm2xvwrid2
CqErKKvqwL1zjDPAZsMU8o79/o5R3A+Vrl12+TCB8DT3z3CuU6CD20gj6ekE
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
q68Tljuv/e3cP95SLThR9Y///yr/+X8AH6lAXw==
      "]]}}},
  Axes->True,
  AxesOrigin->{0, 0},
  Method->{},
  PlotRange->{{-80, 80}, {-80, 80}},
  PlotRangeClipping->True,
  PlotRangePadding->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{3.5140140534767475`*^9, 3.63272356337488*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell["RECTANGLE", "Subtitle",
 CellChangeTimes->{3.6363725914789543`*^9},
 Background->RGBColor[1, 1, 0]],

Cell[BoxData[
 RowBox[{
  RowBox[{"RECTANGLE", "[", 
   RowBox[{
   "y_", ",", "HorEx_", ",", "HorIn_", ",", "Ver_", ",", "offset_", ",", 
    "TILT_"}], "]"}], ":=", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{"f", ",", "x", ",", "offsetRay"}], "}"}], ",", 
    "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"offsetRay", "=", 
      RowBox[{"offset", "-", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"HorEx", "-", "HorIn"}], ")"}], "/", "2."}]}]}], ";", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"f", "[", "x_", "]"}], ":=", 
      RowBox[{"0", "/;", " ", 
       RowBox[{"x", " ", ">", " ", 
        RowBox[{"HorEx", "+", "offsetRay"}]}]}]}], ";", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"f", "[", "x_", "]"}], ":=", 
      RowBox[{"Ver", "/;", " ", 
       RowBox[{
        RowBox[{"x", " ", "\[LessEqual]", "  ", 
         RowBox[{"HorEx", "+", "offsetRay"}]}], " ", "&&", " ", 
        RowBox[{"x", " ", ">", " ", 
         RowBox[{
          RowBox[{"-", "HorIn"}], "+", "offsetRay"}]}]}]}]}], " ", ";", 
     "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"f", "[", "x_", "]"}], ":=", 
      RowBox[{"0", "/;", " ", 
       RowBox[{"x", " ", "\[LessEqual]", 
        RowBox[{
         RowBox[{"-", "HorIn"}], "+", "offsetRay"}]}]}]}], ";", " ", 
     "\[IndentingNewLine]", "\[IndentingNewLine]", 
     RowBox[{"If", "[", 
      RowBox[{
       RowBox[{"TILT", "\[Equal]", "0"}], ",", 
       RowBox[{"{", 
        RowBox[{"y", ",", 
         RowBox[{"f", "[", "y", "]"}]}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{
          RowBox[{"y", "*", 
           RowBox[{"Cos", "[", "TILT", "]"}]}], "-", 
          RowBox[{
           RowBox[{"f", "[", "y", "]"}], "*", 
           RowBox[{"Sin", "[", "TILT", "]"}]}]}], ",", 
         RowBox[{
          RowBox[{"y", "*", 
           RowBox[{"Sin", "[", "TILT", "]"}]}], "+", 
          RowBox[{
           RowBox[{"f", "[", "y", "]"}], "*", 
           RowBox[{"Cos", "[", "TILT", "]"}]}]}]}], "}"}]}], "]"}]}]}], 
   "]"}]}]], "Input",
 CellChangeTimes->{{3.6327254774159546`*^9, 3.6327254783979774`*^9}, {
   3.6327255293309975`*^9, 3.6327255306110234`*^9}, {3.6327256577445745`*^9, 
   3.632725661808675*^9}, {3.636372573335806*^9, 3.6363725837724066`*^9}, 
   3.636372680541067*^9, {3.636372895388399*^9, 3.636372908913859*^9}, {
   3.6363729497554445`*^9, 3.6363729517210817`*^9}, {3.6363730858056602`*^9, 
   3.6363730980206957`*^9}, {3.6363731306253223`*^9, 3.636373180156275*^9}, {
   3.6363732248979354`*^9, 3.6363732463171473`*^9}, {3.636374626588493*^9, 
   3.636374630301364*^9}, {3.6363746716421595`*^9, 3.6363746763222494`*^9}}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[StyleBox["TPST ",
 FontFamily->"Courier"]], "Title",
 CellChangeTimes->{{3.5140155335079975`*^9, 3.5140155491017475`*^9}, {
  3.63637330054379*^9, 3.636373302431426*^9}, {3.6363743964528675`*^9, 
  3.636374399557327*^9}},
 Background->RGBColor[1, 1, 0]],

Cell[CellGroupData[{

Cell[BoxData[{
 RowBox[{
  RowBox[{"Hor", "=", 
   RowBox[{"40", "+", 
    RowBox[{"273", "/", "2."}]}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"HorExt", " ", "=", " ", 
   RowBox[{"Hor", "/", "2."}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"HorInt", " ", "=", " ", 
   RowBox[{"Hor", "/", "2."}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Ver", "=", 
   RowBox[{"273", "/", "2."}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"TILT", "=", "0.0"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"offset", "=", 
    RowBox[{"40.", "-", "HorExt"}]}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"XY", "=", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"40", ",", "0"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"40", ",", 
        RowBox[{"273", "/", "2"}]}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
         RowBox[{"-", "273"}], "/", "2"}], ",", 
        RowBox[{"273", "/", "2"}]}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{
         RowBox[{"-", "273"}], "/", "2"}], ",", 
        RowBox[{
         RowBox[{"-", "273"}], "/", "2"}]}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"40", ",", 
        RowBox[{
         RowBox[{"-", "273"}], "/", "2"}]}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"40", ",", "0"}], "}"}]}], "}"}]}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"neg", "[", "y_", "]"}], ":=", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"y", "[", 
      RowBox[{"[", "1", "]"}], "]"}], ",", 
     RowBox[{"-", 
      RowBox[{"y", "[", 
       RowBox[{"[", "2", "]"}], "]"}]}]}], "}"}]}], 
  ";"}], "\[IndentingNewLine]", 
 RowBox[{"Show", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"ListPlot", "[", 
    RowBox[{"XY", ",", 
     RowBox[{"Joined", "\[Rule]", "True"}], ",", 
     RowBox[{"PlotRange", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{"200", ",", 
          RowBox[{"-", "200"}]}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "200"}], ",", "200"}], "}"}]}], "}"}]}], ",", 
     RowBox[{"PlotStyle", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Thickness", "[", "0.02", "]"}], ",", "Blue"}], "}"}]}], ",", 
     RowBox[{"AspectRatio", "\[Rule]", "1."}]}], "]"}], ",", 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"ParametricPlot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"RECTANGLE", "[", 
        RowBox[{
        "x", ",", "HorExt", ",", "HorInt", ",", "Ver", ",", "offset", ",", 
         "TILT"}], "]"}], ",", 
       RowBox[{"neg", "[", 
        RowBox[{"RECTANGLE", "[", 
         RowBox[{
         "x", ",", "HorExt", ",", "HorInt", ",", "Ver", ",", "offset", ",", 
          "TILT"}], "]"}], "]"}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"x", ",", 
       RowBox[{"-", "140"}], ",", "41"}], "}"}], ",", 
     RowBox[{"PlotPoints", "\[Rule]", "800"}], ",", 
     RowBox[{"PlotStyle", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"Red", ",", "Red"}], "}"}]}]}], "]"}]}], "\[IndentingNewLine]",
   "]"}]}], "Input",
 CellChangeTimes->{{3.636373488390605*^9, 3.636373538373966*^9}, {
  3.636373781473441*^9, 3.6363738039690733`*^9}, {3.636373941345315*^9, 
  3.6363739429209456`*^9}, {3.6363744595092797`*^9, 3.6363744619897275`*^9}, {
  3.636374520615655*^9, 3.6363745482749867`*^9}, {3.636374586511322*^9, 
  3.636374598913561*^9}, {3.6363747761953697`*^9, 3.6363747904384437`*^9}, {
  3.6363752479984555`*^9, 3.6363752484820647`*^9}, {3.636375560549494*^9, 
  3.636375560721097*^9}, {3.6363758022293415`*^9, 3.636375838593641*^9}, {
  3.636375927094143*^9, 3.636375929090981*^9}, {3.6363762286479416`*^9, 
  3.6363762287883444`*^9}, {3.6363766589978175`*^9, 3.636376711040418*^9}, {
  3.636376768121916*^9, 3.636376795141636*^9}, {3.636376901395279*^9, 
  3.6363769125962944`*^9}, {3.6363772025618725`*^9, 3.6363772955396605`*^9}}],

Cell[BoxData[
 GraphicsBox[{{{}, {{}, {}, 
     {RGBColor[0, 0, 1], Thickness[0.02], 
      LineBox[{{40., 0.}, {40., 136.5}, {-136.5, 136.5}, {-136.5, -136.5}, {
       40., -136.5}, {40., 0.}}]}}, {}}, {{}, {}, 
    {RGBColor[1, 0, 0], LineBox[CompressedData["
1:eJxN13c8lmHfP3Aje+89M7NTZnaJJCFEVpRCZZYRpYEUIZkpDStUMssIRYlI
VEpGCJlRIvt3/57nuc/PdfxzXu/X8R3HOP+4TjE3H6ujFGRkZIGUZGT///k/
I+Jw/X9/uqydE/xxHn6xvKbRTOKzf1f8Eki8MLE4LEri6U+/3hicg3sKB+Iv
hcGldnUiNCGw6ElZoWA/eMXDy8bTC6Ybbl4Pd4c/CHZGrh6CabRLdq8cgP9x
64y5m8MCp0cWf+2CiyqPGK3qksRXXj/hrw6XZMZ3HFeG71A+zrkoC++SCTpI
LQ47qPAY0wvApx13rk3ywwnRfmVtJH7T1yqeSOJtVyM2eEjMPDz+TJIPfnmz
Rs6AB+6rGx8SJ/G/Ce6MTSRWMvCjbeaGM6clR/aR+Ixx/B1HLlj232G2YA54
X7q1rQOJ/bV23dpB4qowGUlyEu8h/6VxlR0+df97+AkS3zDqfLmPxD2R5Xs5
SOxFH+aayQZfLzyZc47EJXtdJlxJvHzdMFCSxMLK257TkNjwg+T6OCt8lYPu
ymMSPy5bfpdA4k6bKbYAEi8s9NnakJg/7f0tdRLrajZ85yOxW0+J5CrL/5n1
sH7U2WyvfhIXCKY8qSfxhGLx+g8meItBizkdIzzU7Ul3gxbOOEXXxE8FN9r/
4UtZcyXsJFv2MHEBLq4Q4Vmcgbe/zv97fgyWraJlifkOd3tzUK9+gf+Q/1X/
9QE25J/voWqFzWZvH4p6Bb8sEOaJriHJF99TPFcG2wklVZ1/RNJ/tWQjLhcu
TwsXp84iWT+fSMR6Ktwn2L+PPxFu7Nu9khUD81+6MpRzEd4yGpDHdRbOV1DL
owqE7Re5ePlOktQ7d9cj5Sh8e4J8NskZVuFktluxhRfr1JWiLGC5/RqGiSYk
67kzvJXaAA7qOOq8oglTR1KtcKjC+xctTqfIwbT7/LakS8Chbjq1VEKwyJJU
QzIXvDVwbCOHGd4oshIUpYG1W24G8JPBbnsoLddmXQiXbOK9zTgED0T3OAt+
hC9E/f620QiT7XvWPlwBD/M9f8D8ENY+zLKNKQP29ePQYoyF+dZOrPSHwdJx
5Fn/TsLso0bP2F1hv6pvsWSW8CM7se4ZQ3jf0j1Kie2wO3fwpLwUbLO6YqLG
C1c7fTrMQQevRzvOzi47E86tED7MNQ2/dFWLY+qHq7tWFKk7YJmX3LGd9fBy
2YnWkafwQ1/fiKUH8Lu8t7Pfb5K643NzFKxSxJ61GAzTyxeIL3vC9YG/BNYO
wZMaVzu69sKh5K7H5nTg0RvDASzK8JusGm1yMTjytFHIH3Y4z4IqXZ4K1s0R
DNRccCJc8mqw0fgnnOG02iH9FXapb7Sia4VjpJsrVGphaXqxzwqP4fvl0t5b
7sKJvZeqlxPgERqBGbaLMPeqS4psIFztvbzEeRTWyTbsIrODJQabrquawufT
71BpacGV/JK/9eVhdx7yDAEhOJCXV0KHGXYb6t3sQgY3Si/2H5hzJEypVsdi
NgxX1vWucH6E35tvb5FsghuztZnVK2HFoFQmwXz4NPu9i+QZsGjJyFeFWFi/
7fyUQjis8/RNoKIP/Jj16DMKV/hyoE6/kCWsfu9ViKYR7Gya1SGzDXarkrnN
KwW3Kk2bWfDC+aI0FfZ0JPE97clHVg4RTmCZUjaagm8xVRqI98MMrLXbTDrg
X3G8wwYNcPFHMZodpfBISsQoXTZ83ok/XzgZXpg6PKAaDQ8urn8QDIYftppq
UXvBnx+8v6zmCActFlzVMof/cmyj1tODfxay6/Aow3om8rZqYnDAoz8/bDhg
weusSqab4Pvq32Z2LDgQznRc8dw0Bq9E2r5h/wKrB7tkiLXAYyO1Mpuq4UDB
FvmxItjDjo2DLQt+x/S4jDkBZon718p4EX4dnXan3x8eigqwXnSHv+1bDWe1
hU1u9LivGcM37njUTWjABk8U1oTl4CPaexakBEmcwHlUiRn+4rotnmHDnvDT
7fG3FGfhY12pQlZDcOLUXwfTLjitnZzZoAnmlHcPY6yA5+M23gnnkdR/Zpqk
kg4PO49z8l6Ff7epMW6chY8a1I3In4LNlW+HKrrA7D9lIpUtYTMBejNqQ3jc
SuqPuCp8xHqWVV8Stn7PMqHMDYtw9mmI08L7nUY8HZYPEv4rZmTrMQkHPdn3
zL8PPvnsySerdlj/6ovjqvVwsCttv0MJLFGSx2z7AH70br7MMhkucEvlFouC
GdcCHdSDYDNXMs59nvC67uAVDQf4+qhPwOa98KUbmvo2uvDU84PNDkrw1gLJ
165i8DSXyXktdpL+UTn8hyhh2rpiubC/doRDAtj++Y7Cb2ZFtDy+wDHjl9SV
3sLFo+I8elVwaZHPCYsiWG6GLVz1Nhzx7zAlbzysSTPtbXQBPpbYFm/oD/v/
OCRreASeK9E7x2UDf4p0LlcyhlPE5Nz2aMCtGuYtGrJwH69QvrQAfGBN+rgT
E6zndGXYY92WME1UykffWdhoy3LEvkHYMZXhgXwX3EN7MM+yCX73d8ljTwV8
q9A00ygfHuidiWVNh6PZ37tIXIUZ2ZzyNcJg6mv6RaIn4d62D5J0LjAP150L
Gpbwm+66NG1D2No9XlJvG3zAq+wktyRcdZozbRs3vGoqrmFNC5emRybtWrIh
vLsk5YjGJKz3fojHvw8uOnY56nw7vNDc5RVXD5flBNP7PIUtzFpFLB+Q+O9B
ntBk+BX/jpYzUTAnXdvvgGD4q3/p552eMOXgx0xHB5ieN/tL4F44sqX5vasO
3Pefz3VzJTijKf9ahBjcWs+QEs1O0u+yIHf8Jtix8aKl198DhI1oJXxiR2Ea
rgCKJ19gvds8ljlv4QMznlyZ1XB/FVuyRxH87tr8QtBtOFUysj0mHu7W8j7s
EwHP82542vjDp1faDlw8Anvb/16+aAPrRjRyX94NR4pPTR/UgFXe7ssLlIWr
NFw+JwjAlZub6iMY4cTuL6J+69aEO+Kl3fNn4UuvWl1LB2GOeqGPL7pgHo0m
ijuN8L9g/rzwClj3RYFCdj7J/LkEnzvpcDythHT6NTiDiSnjWBhMz6PyK+wk
bDdOUXXDBeZV36Ifth+uMN/Q9jCEnx9n4U/dBitvBJbekoQvO195eZcHNtec
iw2hhUN5kzXTl6wQXz966PkkTPkjTvNRL+zSMRR7rx1W0oi75VkHH8n2jw0u
hs98pfoTfR9ejZnh9E4iqUcZWbQvEpa+YCsVEgS7h4YfCjoOh+2woj7jANOF
hp0wMYNXqgfLDu+AW17P+59VhJnMnaaOi8AKmQHfbNngkl+NRdco4cIX3po3
5y0JX7Ct1749Crd6ei2FdMOhFyzSbzfD1G5DjxuqSPyi5fzzQnh4yPX109vw
9kt7m8Ovw5PSAUUJ5+Fzybups/3gqHN+AtfcYG9l01z/A3DZ6CGOe8awP2+j
9gN1mImj52uOLCwYs0s1jB9OoJw6lc4ADxrri1au7SecSzURmz8Dm8QZ+GR8
hy34Pqp2dcItojWlA69g8TnLh1Pl8MwOHYe2XDjV8nPE4zQ4x6sg5vNVWHqj
y7zzLBzlWBjdfhK23/4l7I4znMiuf6DcgmT9z2zuvTOAlXrqH1ZuhZMbv0o/
kIBdSxWufOKGs4S6H3yjgc/cc/Rq/GNBOGW9nDLkExxxJPJwdSUs4VhcsH4L
Lt4T5TUeDi+0VHJ9OgxLGt5UP24EC70cFYqRhN933fxVQAd79U6rB07uI1x3
5r637nu4j6/NPaUU/lF6vzM5Gc4Z6JJPCYH3URSv6RyCGxQokgJ04JmJJxwF
YjBlFi3DFUq480fNtMeYOWFv1bGbXa3wVHBNydgjWHr/dPVqImwm/Fb7eQAs
e44s74wd3DH66HODNuxqTB1eJgQXqFcx55PDvSJ8PEbDewl/YZ0Z9m6CrycJ
ZyY/hOWZlls8rsGXeVVGNHzgXPn+V2nWcLG6Gt/d7XDgx3H7fD5Y7LgJ28EV
M8Kpm4TikvvgN1vN57sa4O92Mp3PH8ClzC637kbDp2r0vyl6wn/80wb2mMFb
q83eH1OC7Zcfbpdng7Va3aPn5vcQHslOur3zKxx8+tQWvWq4qTv7vlYWvKIc
ldgXAS/f6NvJ7A6XRiUM6+2Gbfxm/vHKwk+n85Z+M8Kf/btfOMyZEv4x83TZ
swsuWh0TC62EHcnf1qmkw5+ZRcWDzsL0jzt9al1gqZ3K2woN4FXv8eF0Sbj6
qjm9Mg1sVCL913rchHCkt1NrcBtcLKDLu+sJnOwUup89CTbKlzc/GQT3jMfU
+9jDcrWGIgE68JHo3HkhEfiYQ8R1W3JYoq6cI2FkN+G3/Cksfm9gGdrOBatC
2HL90v2X8bDb5PfGr36wgld655wNPDiwavtUHbYYq37tJwBHLc4u120YE85d
78gpH4QjUhl3FDXBhtJ/TPbkwe11FvxnYmCOCZru+ydhAwZv+iALWPaFrOxe
VbgnxJnxCQ8cKK/r8XxpF+Fm35DCxj6YqsjlWFAdzDBbPVZ5D25tCrBeioQD
b3zePnQM/jx7k/KdGSxmvL7bSQFWy+7bH8YCb7rJuyvzz07C1aHrT9w/wfJ/
9Kjln8MegYuiF2/DMVP2JefPk8wv8CidcyfJX4wQl9hFUp/MtcdOGt6UmREe
ywCrKUakHp82wvqtGjJ3fYA/nwv2KC6HA+/35L5MhVvt0jo/nYUZNpGfTnCC
qQybKPYawM1XNg4kS5LUe/1DKIoG7kmW7AyaNMT9OrKtsbbBBnIBU+pPYI5Y
5TcuSXD7cBqv0mnYsM3RZuMgHFGXYuukA+fln213E4GjN9eoeFLC+5PzGHhG
DAgPsdAVWL2BFQVfq8YXwu4iitsC4mCrsjmRg34wvZVcR4sNXDjKsvhDHaZm
2k9HJgjv2aJ94+WaPuHdXy9QRw3CzIm6et1NcK1e7sz7PFgqwjPm7TU4uLI7
w+sknLRY7ZtuAR9/u6LyVpUk/8ao510uWOerPf/cbz3CDVmd4zXVMPeBe7nd
5+EBOWmt+d1wyBxFtQsDnNvc0jj6Xhf7e2Wa45MGPy8UDtjtCGdVFvCIScC2
T2Mfmo7pEL5b49AYVwg7Tw6UdwXA0zTVN4+rw7O7zfdsrO8gHJXeeuXpG3j6
S1ZZyTW4WVuustwaDoxlzKPhgUtnvoqc/qZN2CPQ2efHA3hiTKPo/jF46FxL
nZsSfFLaxFH3nxbht7UCo8dr4PSgXOPky7CWSPRNVhPYYkL4eRwLvPj6vofU
F03Cvolh5MyZsNN5poBFd1jg0PwHJWn4hMmb55cmNQir2FsGfy2F39ipSJwL
gj+ENOdK6MGnHpmVjNLAve0ShYut6oRfcJSH0t+E/YxvqZ+wgyuvngwfFyCZ
/72QfvyHGuHV3Z8fqOXDK/UnLlP7wq3S9laSqrDiXZWHLovbCVPtaPh8qw5+
1JQ7J3UJfutvNFy6Bw5SeefkyAEv9hU0WXdvIzz5SH+TeRZc7C2vnOwG02pv
GvknBXcpJPk6/1LF/TAHj7OXwhfYOTXfhsISMplst4zgdLnQ7moakngrlsD+
91sJax9bXrNIgq/EfWDts4NNul2WvUXhHuadH0x/qBAe8Bw4J1sEV5R08B30
gUWZHuvcV4XXrhpqzKwoEy5akBeNqYPbI9v7JaPhS1KOUv0WMH253qERDpiu
vaytt1KJ8F2mlLpYXdjJ1+JVwBtFwhT8QYHOB2HTrD1kYwMKhIO9YzUDfOA2
h9zLauRwo+SJgtQYecIP1O+Gr/LBEpIRcht35QjH2bdHUSnDgk/n/xg2bCFs
/uO1trAp7OFMo7L2RZawWNkfslAXmELh2ZDCTxnCrVMTfiPBsNqVt9+0yOAY
L+4/SfHSyPfVFpQQg4UsGUWtHkrhvkLMPlzShJvC1Jys6yUJJzxYWrY3hY3Y
5IyP9EgQTnOgPcHoBn+asNZ7NreZcJmt2TR5MPx8hP/RRTI4t/ogP02iOOHt
Jw3dZHnhoqMZdhZ5YoRNLrQ4F2nA0cG5+nn1ooQfV8y+z9kPT99tC7j8WIRw
C7+Xt1y9MOEz4sO1XweFCB8bLG16NStIWFrxsEw5C6za8OIxp6oA4csMgRNP
jPgJZw9TXbA6wkeYLuDXO2V/XsI6CeUB3Ak8hGv/yOl6lXATvsi8XLvUwEWY
uzI7LWGQk/Av7jwZ9xkOwpy19r0PNtgJ0879nJgUhQ163z/2UWIjbGqT1LZs
zkpYS5ZZ9OcgM+ET3DksVhRMhHeI/C1rMWQgnJIy31jlREf4SsYBwegLNIR5
q07KujVREd5qonavbJiS8MRcZTuXOAX6y2QYWXuS4bwz7IxZudfq/msegWnf
1PQlwgIhg75MnX8JH2I26b275zfh5JCBoq8PpwlnJEyZWciMElaVr7m0Yd5P
mMxu+1V13XbCzxrfvBCN8yY87/xIZti1Ve+/Vgp9wmnY2Ev4X2lWQLv3COHQ
4KN19FZThL0b1Iq3jc0Rdow3STY++pewZsRKtqfiEuExu2nJjyOrhBXCKm4n
KJLp/9e9fa9r61goCE9tFpb53kFJOGClSTqmkoqwmzHTd5tkGsKlp28NcVjT
EQ5VCw11UGMg/OBbluONJUbC2+aPLE6XMhMWtqjlGDdlJWydMtnRJctG2Ejq
5ZeLguyEx3x+1ryi5yBcI7fVeO0nvFdZgn/lKydhpjzNpLkqLsIXu+/8DEnl
Jlyyv+jK6ygewhw7+toYPHgJK/lWOHEd5CMcxl16g0eLn3D4mY0HhTwChDVF
5jcoaQUJS2kxktv8hNtvv9vr9U2I8Jbq3kC2FmHClXtYDZ/mixCOYFsoojcX
xX4rTjM8r4U7NYQOKsuLETYe4G2hy4Y7dXOvD3CII/9ldDBPHByxOXE/76bN
hB115M9yBcApZwVaAyfhn/6ZJzsOSRBOu+63/fonWDz61CSnuSThRo21P6k1
JGb+Lha+XYpw7+0D951z4Xa6OVY6LmnCwhmD2VxxcNSw+zXhNXivpVZqzBkZ
wlO3NBJrp+HsrOa+aUdZwlVviiwiPsE/88U5WYy3EJ71qH/tUQbbmpbcEZWX
I/zxx/a3n2/BxdlMfL845dFPKKiaMgr2D6DdOzgP35meJhc7qUB4SPQovVMf
fDlYWWPFVpEw2aPNB9za4ZsZ+S+bdJRwHkUXbK9VwM3aZ+7kcihjv/F1tFN7
4G9/SyKHouArGr/kul/AR+I+/QhbgR91vOekUVchfHGW/VT8KThKnKynuQDm
VlHzIRuGORQjzgrybyWspxOYMW4DL8o8HSqLg/ul0nRUWmBL8uaGQgpVwiot
DLX0WrB+zlIL/xn4m6MyhexjOEeKbe/PCbi3n4opVmob4awAo0UFZziRX24+
IgNmuXOIv7MTXma5W0lDv50w583rx2Z2wVXzTfpd4XD8sTx5zyr4Q3Nm/PBf
OIv6m4CjghrhTNtXVZGesOSl+YuP7sF9De+dovphil8v/vN3QZ1w6b+FLRuW
cBLn12fe1+ENxk2+n1/DX/4Y3pFch79PyQ1IamkQDnzpZCrhD6sXaL7uegwf
i5CtOjYBb1Z1614S0yTM/G8njY4zHJnu63ouBfaULVbOboPDWtM5ztJpERbY
805kvwE83pOv+zkcNjJpj3KogOmzaYxfTcNk7JM8fbLahC868nD8PQyrPp8W
fXEHttz0Jce7B16RYzjAw76D8MejPzkD98GaYcwb7VEw4wUTV+YXMFOa/Mf1
JTjjmr3ftIoOYdtEZbG4U/D5SAETtgJ4u61FWtIgzKepsPJaSJdwzD/r6H82
sEyLhNS3G/C2q3Q77rfDbVLqZ49R6xG++Ym5rc8QHnNVMrE6C+f3uGsVlsCp
HoZ65TNwzFhZhTOHPuGBbCG7ahXY255V9aoFrBOWt/mgNyydn3T7XAxsZygh
n50D13bpLmg3wNqnHpvKD8AbZ14+FViBe67IPXDnMyA8lSjcIaQO76SrYOu2
gktj7vf+9IWPB6vWLMXC2335JN0LYQ2XmLe6b+ELNbcv8o3AQ+I0TXspDXE+
i5yC50Vgj1dFjzdrw4fS0ltE7eGUb1tWBE/DP6XZyv2SYD/vCwUaT2F9oZSy
9Xew1JeN3UKTsBU586wWjRHhcrHcrhZxWMksSb9UH/41JPEywxF+c4mhrScU
HrmRMsWXCmumF+5uLYFz8rnkP3XA58Yy87/2w3ZSEpL9UzA9bW3kmXm4Ztxm
lHkVlhEPW59fg5Md7nN/24CLfxZmHiDb+b/+z3h3ply8ncRjm+ryd5PDFEnN
ig0kFhLrLNOigDWefNMqI/Gp1hnjPEo4xv7fO9FNcPYYuXUGiXsouVziqODd
O7SDAmhg0UfReXoMMK/7+YUKErPyBe1SZITJIj2GBZng7467RJaZ4buMlKll
7CT1T5yLkuUnsdzpoxyysAcPjcboTvgV40wSmzuccOCOeSSJHTP30SyReEHu
Sej3I/AWM9/DTzzgGzG/Fc29YDfqxbdX/GClfXmXVkm8mmyn4+sPp0g+K7YL
gFt2hqRKnYZVLq0caQyG11sKhTVCSOLZHb8UkvjI/RqzpFA4rSF8q1sYfJRO
ceoTibda9ueYhpO8T991+VTOwekyvzqzSezhmxXLex5WfWZhHEvi/xkR8P8D
7f5fJw==
      "]]}, 
    {RGBColor[1, 0, 0], LineBox[CompressedData["
1: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
DruUyl/5xAVnCXY/+EYDn73n4Nn4x5xwyno5ZfAnOOJo5JHqSljcobhg/RZc
vDfKczwMXmip5Px0BJYwuKl2whAWfDkqGCMBv++6+auADvbsnVYLmNxPuO7s
fS+d93Afb5tbSin8o/R+Z3IynDPQJZcSDO+nKF7TPgw3yFMk+WvDMxNP2AtE
YcosWoYrlHDnj5pp9zEzwl4qYze7WuGpoJqSsUew1IHp6tVE2FTordZzf1gm
nCzvrC3cMfroc4MW7GJEHVYmCBeoVTHnk8O9wrzchsP7CH/ZPDPs1QRfTxLK
TH4IyzEtt7hfgy/zKI+oe8O5cv2v0qzgYjVV3rs74ICP43b5vLDoCWPWQyum
hFM3CcYl98FvtpnNdzXA322lO58/gEuZnW/djYZP1+h9U/CA//ilDew1hbdV
m74/rgjbLT/cIccKa7a6Rc/N7yU8kp10e9dXOOjM6a261XBTd/Z9zSx4RSkq
sS8CXr7Rt4vZDS6NShjW3QNb+87845GBn07nLf1mhD/7db+wnzMh/GPm6bJH
F1y0OiYaUgk7kL+tU06HPzOLiAWeg+kfd3rXOsOSu5S2F+rDq17jw+kScPVV
M3olGtiwROqv1bgx4Ugvx9agNriYX4dn9xM42THkAFsSbJgvZ3YqEO4Zj6n3
toNlaw2E/bXho9G584LC8HH7iOs25LB4XTl7wsgewm/5Ulh838DStJ0LloWw
xfql+y/jYdfJ741ffWF5z/TOOWt4cGDV5qkabD5W/dqXH45anF2u2zAinLve
kVM+CEekMu4saoINpP4Y782D2+vM+c7GwOwTNN33T8H6DF70geawzAsZmX0q
cE+wE+MTbjhATsf9+dJuws0+wYWNfTBVkfPxwDqYYbZ6rPIe3Nrkb7UUCQfc
+Lxj6Dj8efYm5TtTWNRofY+jPKya3XcglAXedJNnd+afXYSrQ9afuH2C5f7o
Uss9h90DFkUu3oZjpuxKzp8nmV/gVgx3I8lfjBAT301Sn8ylx1YK3pSZERbL
AKsqRKSemDbE+i0bMnd/gD+HB7kXl8MB93tyX6bCrbZpnZ/OwQybyM8kOMJU
Bk0U+/Th5isbB5MlSOq9/iEYRQP3JEt0Bk4a4H4dWNc2t8H6sv5Tak9g9lil
N85JcPtwGo/iGdigzcF64xAcUZdi46gN5+Wfa3cVhqO31Ch7UMIHkvMYuEf0
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
E+m2
      "]]}}},
  AspectRatio->1.,
  Axes->True,
  AxesLabel->{None, None},
  AxesOrigin->{0, 0},
  Method->{},
  PlotRange->{{200, -200}, {-200, 200}},
  PlotRangeClipping->True,
  PlotRangePadding->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{
  3.6363732561765366`*^9, 3.6363733100479755`*^9, 3.636373369188712*^9, 
   3.636373545799709*^9, 3.6363736735505657`*^9, 3.6363738118160243`*^9, {
   3.636373885231036*^9, 3.6363739093022995`*^9}, 3.636373950331088*^9, 
   3.6363740196276207`*^9, 3.6363740510154247`*^9, 3.6363744658430014`*^9, {
   3.6363745150307474`*^9, 3.63637452453133*^9}, {3.6363745946078777`*^9, 
   3.636374601690414*^9}, {3.6363746355898657`*^9, 3.6363746505037527`*^9}, {
   3.6363746805343304`*^9, 3.6363746897697077`*^9}, 3.6363747974117775`*^9, {
   3.636374848892768*^9, 3.636374910306351*^9}, 3.6363749499311132`*^9, {
   3.636375019867258*^9, 3.6363750269965954`*^9}, 3.6363752514617224`*^9, 
   3.6363755644963694`*^9, {3.6363758156924005`*^9, 3.6363758449897633`*^9}, {
   3.636375875644353*^9, 3.6363758810732574`*^9}, {3.636375919356394*^9, 
   3.636375932367044*^9}, 3.6363760837055545`*^9, {3.636376116341382*^9, 
   3.6363761312084675`*^9}, {3.6363761973381395`*^9, 3.636376300643326*^9}, 
   3.6363763327487435`*^9, {3.6363763748071527`*^9, 3.6363763821860943`*^9}, 
   3.636376447598152*^9, {3.6363767300727844`*^9, 3.6363768261706324`*^9}, 
   3.6363769174635878`*^9, {3.636377240298999*^9, 3.636377299174531*^9}, 
   3.6527788168182573`*^9}]
}, Open  ]]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[StyleBox["PS standard vacuum chamber ",
 FontFamily->"Courier"]], "Title",
 CellChangeTimes->{{3.5140155335079975`*^9, 3.5140155491017475`*^9}},
 Background->RGBColor[1, 1, 0]],

Cell["\<\

(https://edms.cern.ch/cdd/plsql/c4w.no_login?jump=SEARCH&p1=DIRECT&p2=PS_LM___\
0302)
\
\>", "Text",
 CellChangeTimes->{{3.5140163475704975`*^9, 3.5140163585079975`*^9}}],

Cell[BoxData[{
 RowBox[{
  RowBox[{"Hor", "=", "146"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"HorExt", " ", "=", " ", "73"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"HorInt", " ", "=", " ", "73"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Ver", "=", 
   RowBox[{"70", "/", "2"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Rlarge", "=", "137.5"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"Rsmall", "=", "23.807"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"TILT", "=", "0"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"offset", "=", "0"}], ";"}]}], "Input",
 CellChangeTimes->{{3.5140155581329975`*^9, 3.5140155675392475`*^9}, {
  3.5140156791017475`*^9, 3.5140158121329975`*^9}, {3.5140161263361225`*^9, 
  3.5140161332111225`*^9}, {3.6327248232768373`*^9, 3.632724829986971*^9}, {
  3.632725632615118*^9, 3.6327256330851274`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Show", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"ParametricPlot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"PStype", "[", 
        RowBox[{
        "x", ",", "HorExt", ",", "HorInt", ",", "Ver", ",", "offset", ",", 
         "Rlarge", ",", "Rsmall", ",", "Rlarge", ",", "Rsmall", ",", "TILT"}],
         "]"}], ",", 
       RowBox[{"-", 
        RowBox[{"PStype", "[", 
         RowBox[{"x", ",", "HorExt", ",", "HorInt", ",", "Ver", ",", 
          RowBox[{"-", "offset"}], ",", "Rlarge", ",", "Rsmall", ",", 
          "Rlarge", ",", "Rsmall", ",", "TILT"}], "]"}]}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"x", ",", 
       RowBox[{"-", "80"}], ",", "80"}], "}"}], ",", 
     RowBox[{"PlotRange", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "90"}], ",", "90"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "80"}], ",", "80"}], "}"}]}], "}"}]}], ",", 
     RowBox[{"PlotPoints", "\[Rule]", "800"}], ",", 
     RowBox[{"PlotStyle", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"Red", ",", "Red"}], "}"}]}], ",", 
     RowBox[{"AspectRatio", "\[Rule]", "Automatic"}]}], "]"}], ",", 
   "\[IndentingNewLine]", "\[IndentingNewLine]", 
   RowBox[{"ParametricPlot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"Ellipse", "[", 
        RowBox[{"x", ",", "146", ",", "70", ",", "TILT"}], "]"}], ",", " ", 
       RowBox[{"-", 
        RowBox[{"Ellipse", "[", 
         RowBox[{"x", ",", "146", ",", "70", ",", "TILT"}], "]"}]}]}], "}"}], 
     ",", 
     RowBox[{"{", 
      RowBox[{"x", ",", 
       RowBox[{"-", "80"}], ",", "80"}], "}"}], ",", 
     RowBox[{"PlotRange", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "90"}], ",", "90"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"-", "80"}], ",", "80"}], "}"}]}], "}"}]}], ",", 
     RowBox[{"PlotPoints", "\[Rule]", "600"}], ",", 
     RowBox[{"PlotStyle", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{"Blue", ",", "Blue"}], "}"}]}], ",", 
     RowBox[{"AspectRatio", "\[Rule]", "Automatic"}]}], "]"}]}], 
  "\[IndentingNewLine]", "]"}]], "Input",
 CellChangeTimes->{{3.5140142601486225`*^9, 3.5140142928517475`*^9}, {
  3.5140145856954975`*^9, 3.5140146418986225`*^9}, {3.5140147387579975`*^9, 
  3.5140147736017475`*^9}, {3.5140148091329975`*^9, 3.5140148804142475`*^9}, {
  3.5140152899298725`*^9, 3.5140152905704975`*^9}, {3.5140154026954975`*^9, 
  3.5140155006798725`*^9}, {3.5140156113048725`*^9, 3.5140156413517475`*^9}, {
  3.5140158165236225`*^9, 3.5140158244767475`*^9}, {3.5140161430861225`*^9, 
  3.5140162373986225`*^9}, {3.632724662077608*^9, 3.632724664597658*^9}, {
  3.632724703910446*^9, 3.6327247069705076`*^9}, {3.6327248805319853`*^9, 
  3.632724922068825*^9}, {3.632724968771761*^9, 3.632724968951764*^9}, {
  3.6327250046864824`*^9, 3.632725026878928*^9}}],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {RGBColor[1, 0, 0], LineBox[CompressedData["
1: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
Rva8w70Y1Vd0qhn3IY6TzYqXe7HE+8+OMXy4oNtH9VUvNndR7PwnRrz2FMTq
q/ZhY/uVM5twn3PSfWfP2o9ll96+04j7JtnR5fjdAazRslv3FSOecvQq9F8O
YJwKoo9f4hZiFxeZ/TaAlSbVaDB88XP/l0Ncgxhh4/6tNbiPBhxx3hc8iBXc
5eBDjHxw7ZoTTWcI8/HMqK9irI+ZLkfFmp9Y+v0fb8pwBxUHOrR8HcaaBHhk
bzLyQdzThJypYSzKpCwoi5Fvvde+ObxxBJOUKK68gVta5IaRoOkIxva5yC4T
d8vpRi2n0hFsyqjlYAZuPRclobZzo1iR9MvLKbijow+PjIiOYaVvJR1jGfOr
rFk2XjuOiZxtHwjA3UGIVBBrGcemTJ9wMnyQVJNp0j2O6T2f0DiAO8mOFpu2
MI61tJyN9MfdFhziRlKfwFDG5jV7GfH1uGzd+YwJjOUE51933KfJWrskAyax
gBPT/lTclVTCGnveaSzq7699Gri93M4TV6TnsMOVFc1jeP2iue7dKo4jCxjh
bl53Nm6DtD3F/snL2Fgo64QN7sRjiGfjBxbQu7hubByvj9IjzXiFw1lhcTLE
/yxu4sh0TD3LGjBxK18Qwj1dspmeX7QW5qZvmlzB6y/LvoAAdeJ6KGoyovPh
5oxmWe59yQZ9d/b+PY/Xb30BHE6vA9ghsSUG/cbrO5dGTIr6lwP6zmh8ssPd
Hfm7jC2fCzqWiguv4fVhW2K74rDNRvDxnkvqxOtH7YS/ccQDPLD4MPuXAu64
oy+6MoAXZGdDPjnh9WehxJaJt+v5gC2h0ugCXp+ePpoZxv+WDw5HrkxW4PVr
f6RTx3gWP4wZhnA04vWtkE7uYo6PAKxRba7px+vfj+lqLH8MBMFG6aVoD14f
m9z/FmbHJQRjs42sX/H6+eypzbmnPwrBqyL70ja8vqbOpj+xzRMGFjdKXQVe
f/9UvHtmJEAEqNpClbfx+pyTdVZT1kQUhvi22B7A6/fBS76OwcKbIGBjr4ka
Xt8nfvZTS+rYBOrCDdjKfgq8fJk/YlEmBo9Sg27d86fAqwPHfD8f3QyP8ldJ
+PpR4HhdsP0RkjhYrBrQ3LwPPz++ubW5lHcLbNa9F13si5/vYvfdefZlC6wZ
OLLWzocCB4b9uLxLJECdTWGh1hvPd6y1UwkgCZxv77cSvfD88vsW9vm2JARo
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
9r7+2viP/+/H8X/+f0RHVMk=
      "]]}, 
    {RGBColor[1, 0, 0], LineBox[CompressedData["
1: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
f+NRme52W6WRRJc55PbfeCUO79BzjL1Kr91w9r/3ERh5I/DgRxo94cOqUYbX
+WmPrhAy6EcK2/+bj7m+3FqHuFv08HzuXoZDiy99bAm6TU97fb2D4UOH3pJX
xO7SOxaiPjO8X2n5wbaabDqR9rrxv+//S1vUITiHXlnt9pbhXXmB50+J59Gd
XRwqGd6xL28yrzafzsuRXcKwtUy3R3PIA/pwm00ew6Y9ou+XthTSu97a32R4
80MTh3z9YrrE/P5zDIvw9Fwk8z6i+1MiwhkWCjj1qrn/Eb0lZ+AAwzyKz1SW
Ex7Tp+obbRjmuLjDJ3nfE3pBnDmZ4fU//9xQID6lR/qJqzDMkqvAvmOwlH7k
9GfO/+Jn7VtsqPIZPeVZ2V/Gevnr7Rl2MqmM3sA9M8DwhNT13lxSOT1S8DSd
4f5MzpeLyS/ocxff+TJc/IxYtG/3S/qbiA07GI5oCshskqLTNze9JjK8fpUv
9skZ6EEPIngYztB4tzVn8BU9VkbyAWP9r6L3bNxtVUXPRt0JDO+zWtjA+7CK
blzFG8awmrcSS0TYa/rmmRdkht9evdxls/YtfY2EfR0j/2yXym1j9XtLN/e9
dJ/hhCJ607OGt3Q2YZ04hnfVjIFkSjWd9067JcOjc7Tb01K1dN4Tu14z8qGI
60avm6iezqVDSmfkz5NDqrto2fV0li+HDjPcc8Sctp6tge7bscGC4cL4Y4aH
PzTQUzZmzTDyryH9m5SJ23u6hN1fS4a1+ZoOz7xooqOqy22M/O7r1DHS9KeJ
PlZWmsvwjZtDfg8kP9JZhGzDGGbZvsrL49xHOlp6x8fwO0MN2jvrT3SZy0sU
xv7hfiRFI/NbM9282CRmirF/yW/jPMXVQh/2iLVlOKv9Re8eUgs9RRgJMdyF
BlPEb7XQ5xJ4bk/i9uLWn83w+kwveyVfwti/9uV0Vtz42Upfw29Vztjf/Nu2
m6TPfqWz7d3pNYz7Uhxd/JhCO/3II10RhgvJDjPOLu30J2sSGxn762j2yVyR
inZ63vMsbYaDDjexp536RlfaQ2Rl7MchHGHvr639Tl+M9T49iJuU2aX4jr2L
TtwXzteD+6V/0pS1TBc9I0ajqJuRrw2MX3wgd9FZNlpYMmzclmv7OaSL3nE6
LrILtyV/4OGu7130oGM+/T9wO55fKp151E1PYz+U8O2/9bnJUHpXL70s9uPB
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
      "]]}}, {{}, {}, 
    {RGBColor[0, 0, 1], LineBox[CompressedData["
1:eJxN23k4lV/0KHCZMg8lZJ7neZ7fdcyz4yCVWfhWhEhSyUyDoZBSSikylBJS
UWcLUVGGCFESCRVlJtz3/O69v5N/8nnOeYe9195rr+V5EvcPIwXS0tDQvKGj
oaH8+39/XNH//02vQcvw+abL//rwsQNHT/7j0dnuH8sbVDd/KR74vU51WpNd
9dc1qjnSLgW1LlEtxKHakTlDNdOqdXr9MNX29BlVvB1Uc784H9zSQHWJVxzf
tgqqc/guy2dcoZp4/6pyyWmqM1e9X26LploqwL7lXhDVZyukHn1zpdqGW5bd
0Zzq0wqTy0xaVF8Sz+vzk6B6U+eQwCQ31boKqkQOGqpnOh8IpP0i/a9p8jzt
VD5RPaI3dyiyneqdq9WL3+qplsj3ObxcRnXF9Ot4r8tUZ3j6Ls6mUY1VjHhJ
HKXalv+cYmIg1b16CxnablS/Tbfs+eVKddvIJf7Sf/z0tMEtgX98oz/u8SaJ
6pBjLF9fEammfSyq521P9V/Ww7F8/3jB58WLTjuqv28NdDD7x2/dy/3lbKnO
X9LK+GNFdbZdanfFP04v/MAX+I9PWR0v+mBJdcAlcl2DBdVqurajqWZU39LU
+mL+j3nVREZo//Ga3J/hU6ZUh0oPDRn94xHxlx9XCVS/FLgycPQf6/Ml92v9
47vbQz/8AapFuXb3PfjH2WymvaH/mIFZ6b3SPz7GwNszhZHQeSeTk7mlr7Gp
LTTdpbglV6/P57F+xLw2JjuDcMv1ljwg//iCda72vJPCTagu37UYPo6ZLj17
O2pCQjV1Slfoor5jtXN3Om7gnt+zfeyF5DQmN3uh3Rv31y9t7yJyf2JXf5x4
I4R72qqQ37N3BuOYDHw9aExC5ey15rTLs9j8F/22XbjdtvMXDo7/wf77JNnK
g/uG3Urgs9dz2OAg+8tuIxI6ORun/ah4HiP3fGlyxJ2SUhgZZrqInW05Q7Y0
JCHTEOakBaUVbL0x8jk9bpqrKwohgytY+HOvZy8M8PHcy5o/nLSKudWp15vg
5pY8vhbyag0TKxt4pKNPQg8eyD0VU9rAHqXLV8roktAdsTnTa/pbQP7M9ntj
OiS07XAmr1vMFihIWa8owi263eCnzOMtkHCqq0wE94RSS52xJi3Yh8cU82qT
kDMSVxMUo4OvLq8KGDVJyPihobvpID28XTu+naxBQlZq95Q8tzPA41tKZ6Nx
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
t9Xfklm6JOlWKfPVYpQ+dbeDXFPgqktxo2qnpJpcB5l+89pBiv/SLZHqRdrJ
1WnH31Iccde8qov1NVm6fO+5Ndznefut+dJekbsUiY8pvhcfPOJJ+4rsZe49
RvF312zO78utZG2DZv2/uL3XPx/aGG8h5+jXDVB88r9IBnO/FvJmxOFNivO7
GK+dGWomx5qZS63jfl+s3M7T00TuKNMMptjO8YSCImok26br/6I4xJVtP7tJ
I5l9pzjbBmU97r1WPFOPyOUEBXmKCzpOEfaHkckpQTd9KR4euNGgFPyc/Nqf
8wTFIt9e6P4OekZeW72eS/HNDUaV4971ZIVNiRaKR1nky0z2PiWrB/MNUSzF
ZydFt+sJWT1S+Q/FJapZAukOdWR59+eCm5TxGlZdJNo8Istp6qtSLG/dw7XD
opasVNFLoPiuL9/W60bVZKewyACKf4XoJ/rrPSQfqT9yhGLVGI91Ga0qctmt
S0kUh6fEHptWfUCelR26QPE+SWzCx72SbGdtWkjxN8Ok4e+Od8kN9K8rKN7v
2tpz2LKcbOkVWUfxdAjr61XjUvKks8kLikNTnFCSdgn5zqhCO8W/r+U8YlO+
TU7i1O+l+MijD3cvShWRT/bvH6Z48a3gLRGhG+Q846djFP95S9Zwki0gd5oo
T1O8vGkl6sd7maw41DhL8bpaJ2skQy65bMexBYoZmh/MMk9mkW2nnVYo5pJp
fKXcmkbm8LL5S7EO1y2LW7Zx5KWDARsUXy5Nm+llDyXT7bi5SfFIzCO/3nZN
TNtj8398+tbqrZT4w9g547j/8ZOZH8sio/EYY4PY/1xfmTEkukZ3Bivu+7pG
cfeOoFvT2eex/RltyxS3jw0/GriVizmOvJ2n+GW12+vWmsvY7neLMxQ3JnYM
17YUYMl7YYriT6VFy87BN7DuhIqvFHuc96Z9FVmEYRZ6QxT3RwuwwcnbWPvt
bz0U7/Lp21GXXIJF33j0muIey2xRlYxSDNMrRRQTVRzliy+WYxIh9bUUd+xg
0RS6fhcTMZoto9h2vcUop6QS0yy1vEaxxDeRUuRRhV113Z1A8ZeBv0p/fR5i
07nbIyi+0TFYpRtQjdkenvWjWLg2r74ypBZT2eDAKB4qPQJT4Y+we5VEJYqv
FJBapKPqMI21an6K+ZM53hXEPsGM93/+RVnP21xSR89mPsOYs1+dp7j7wCPr
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
6Q5G/+MdDYI/6//x/7vL//r/AFA9KEY=
      "]]}, 
    {RGBColor[0, 0, 1], LineBox[CompressedData["
1:eJxN23k4VV/0MHCZMg8llHme53k8+5pn10Uqs/CtCCVJJTMNhkJKKaXIUEpI
RZ0lRIMyRIiSSKgoZArvub/3fX83//B5zj3D3mvvdda6z0MiIJwSRE9HR/eK
gY6O+vv//rih//+XfoO20dN11//1gSN7Dx//xyMzXd8X12hu/lzc/2uV5rQm
++ovKzRzpV0Ibl2gWZhLrT1zmmaWZZv0+iGaHRgzqvjbaeZ9djakpYHmEu84
gU0VNOcIXFTIuEQz+e5llZKTNGcu+zzfFE2zdKBDy51gmk9XSD/46kazLa8c
p5MFzScVJxZZtGm+IJHX6y9J87ru/m0TvDTrKaqRuehonu64ty3tJ+V/TZfn
Za/6keZh/dn9ka9p3rpc/edrPc2S+b4HFstorph6Ge99keYML78/M2k0YxXD
3pKHabYTPKOUGERzj/58ho47zW/Srbp/utHcNnxBsPQfPz5peGPbP77WF/dw
nUJz6BG2Ly/INNM/FNP3caD5L/uBWIF/PO/77FmHPc3fNgY5mv/jNx7lAfJ2
NOcvaGf8tqY52z61q+Ifpxe+Fwj6xyesjxa9t6I58AJe12BJs7qe3UiqOc03
tLQ/W/xjfnXRYfp/vCL/e+iEGc1hMoODxv94WOL5h2USzc+3Xeo//I8NBJL7
tP/x7c1h738jmsV4dvTe+8fZHGY9Yf+YiVX5nfI/PsLE3z2JUdBZZ9PjuaUv
8ckNdF2lhKWWr87lsX/AvdcmOoIJy/eU3MO/f8Y7lrvfShMmVZdv/xMxhpst
PHkzYkpBNXXKlxiivuG1s7farxGe27l59JnUFC4/c+61D+Evn9veHsz9gV/+
fuyVMOEp60JBr55pnGsi6OWACQWVc9Za0C/O4HOfDdq2E3bfLFg4MPYb/++j
VCsf4Wv2S0FPXs7iAwOcz7uMKej4TJzOg+I5HO/+3OREOCWlMDLc7A9+uuUU
bmVEQWahrEnzykv4amPkU0bCdJeXFEMHlvCIp95PnhkS47mTNXcgaRl3r9Oo
NyXMK3V0JfTFCi5e1v9A14CC7t2TfyyuvIY/SFeolNWjoFvis2ZXDDaAwqnN
d0Z1KWjTgUx+95gNUJCyWlFEWGyz4Q/Zhxsg4URnmSjhceWWOhMtenCIiCnm
16EgF5BQFxJngC+uLwqYtSjI5L6Rh9kAI7xZOboZ16Qga/U7yl6bmeDhDeXT
0YQZ11Q4B+2ZIH02K/qbBgXpH1kpFq9nAu2c7ZSX6sR8X454opXDDMldXzZm
qlLQdPW8wlVlFpB2WTu4RZGCtpx61P6Gnx24lu5OtCtQkIzRo03Pzdhh8Zq/
Xyphf0lJncNh7PB6ptlxQZ6CVt6vOTG3sMOhs2fk++UoaH1/hTtLOAe0vBX8
WCBDQas2FeJn6jgh2EnLVlqCgrgHr6qH8/CA6Lwe10dxCgq4Wkt/RZIHei8b
d18g7PAgSvGBNg9YTVh6sxMuCtHKqNjBA7LJOw78FqUgCc/0N2WFPDD+KDYf
hIl4Kcv8p6DIC3tk2ia8BCnorkHM3A3NTbDvr9fp89zEfLfvSXfdxgcF9sss
boRVPbZp98rxQfulC2mbCH80u1vkrMMH6gZdyVlcFLRV9LOIHJkP/kRZx53i
pKDhDe/i96XwQcK0xqFYdgrS0/AecfnJBxdHmH2CNlKQJ4xNcj/eAs/b7mno
rLug6iGzJlljAfh9cPrlwR8uyLNu365LWtsg2mjHy4+DLqiguz3q6V1hOF4X
73P1tQu6lk7ynpoSBRfe3NGVxy6opPPanoLz4hB3qrMjrdwFpb/pNkk+KwGx
n5Yqqy66ICnVCJnrZyWh29VhlvWkCzKUuP2NM1IKyo/5vK6NdkFF777QV1tJ
g0uC54X1IBfU6KBM3iopA+TixLZodxdka1BpFPBVBsRu5U5lmLsga4fDh9/d
l4Vwr+AbCxouaFnZNpjxkBwIqAc0ZkkQ19dbNRSTlIeszzadLdwu6Mqp5tTO
Pnnwq9pprbhORk+nexjETyhAlbYiZeQnGdndGuG/JqQIXefHnPSHyCjWY8yg
uVERHLa8qmp4TUZ6QCop2aEEeQcvM396TEbd+4zrlhaUwC9JacatjIymttmS
d59VhqT7Y9jSRTIqSe+dUhFSgSj8dIJRGhn1v6LIkSpVACZ3Ktw+TEYRW85u
jdFWhQ+zm5seB5JR4lfFJ0+eqcLhexm/hF3JKONp587d9mqw74xG6h0zMhqe
zFdwaFMDVQvgGFQno8C3HVdSZNXBXihmSV+cjD6scYP9bnX4Vvzr6AQ3Gd1u
272z/Yo6lAuXD4b/dUYbgtNeiAyqg45iS9beD85oYmtckNEWDfCbrZUtrHNG
nlWO5ewUDUiXkh0/luuMWIs1b1ala8Des5ORtZHOKCjFdjH2mQZ8fZg8qkh2
Ri9MmyqHVzSATzRSYlXVGc2njQyfV9cE88nhtMNczoie2zUqZrcm8B6U7lKa
ckKxIoxOffmacE634ZvJSyf0fdas6M0rTbj3QOHLmRInlDLI9lRugxYkRE6V
6aY4oRPFG+mMNbXA9YLypZOBTqhOqZpc6a8FzYfNw/hJTuhXkAvLvlwtGM+u
5Nog7oS+dut/3NqkBWX7prPl/joirc8KTX/ntCC07C6a73NEby95v7WU0YZh
6ebHYg8d0aEgJ6U6F22Y86wUTM11RDcPnT5tnqANj99+N7ONdETey91Zm+5o
Q3x5eV41xRGJqT3LOv5eG74i0zc71RxRauPin0lGHVjdLNvlxeWInD2n7VtV
daCm6Mujy5MOyM9nvSjXUwdCL4q/Smh1QK1/XlXTpelAz8uq0uYSB7SL9ECa
4a4OfHwouM88ifi8u4nK534duPile0E0wAF5n9sism+DLrhGcd29TnJAJKlH
3x/L6ULlM1E7P1EHVMW7qNVN1oXHDklVx1bt0XjXs76Hh3UhOPvJ365+e5R8
/fS0W6EuNPE58KU9tEfTsbxJHc26ILG2033kgj3KclBUV5jQBbEbJkdjDtkj
LOxKnAyPHrxJjgrZ72qPHDXXGMW19UBEMgldUbNHkbZWHpW79GC/LA92iMMe
hd8M3rEtXg/C/vvFWjplh+S3LXy+XqQH3IGlDwXa7JAvb75ZRase+F+p1hot
sUNG75glPk3oQY2JaZ9Hqh2qDY4p5mLXh1v5V/027rZDwyyTvHdV9cFe07V2
s5kdOqiY9TDHWR+yUod+eIraoY1ygaIfDupDN2nc2X7FFi1IoKci5/XhhYHl
iQsDtijHkiPoSY0++Pw4claszhZtRxtO3u3Vh+IhunDGPFv0VQ+82f/ow5lT
PhoyB23R34VV79sCBnCwwEjkh5MtOnOSMchD3wDYv4f28Kraoqe86FPidgMw
X4g8cJDNFuloJ0iMHjYAFextv9qEDfpikhDTmWsAAj/LQnLbbFDxCi49XGUA
13fs+qxdbIPYcvg38ncawOC6j5Rmsg3y7Vr1/f7DAOoCDGxD/GxQd0vZuyEO
Q8hRzrlob2KDRH4ueE0rGoK4FqnmpLAN2qssoF9rZQiO883VG5askYnGq00n
Aw1Baa4g7v17a2QWx71va7whsO2aO+RWZ40m8XWVT5cM4dQxCSfOXGu0snNH
xs06Q3jUXzQrGWmNFMRHfQ27iOOzS8cPOVsjD7Mn1c0/ifPtirskVa1RQsCm
ZXlWI0jf2OFyhNMaYdzBe15JGkFlfEcN66QVUiXvO+VuagQJujKjC21WyDhL
NualhxHM3XJekCi2QmJGE3HCkUawJ35JazbBCl01ucxWkWEEGecXjCX8rRCp
tWxeu8QIKMGvFM6YWKEVw8noLDCCtsjZERdhK3Tiz4neH31GgH271IKvWCIu
79s1+TNGsF1QMH1vnyWaqhMwY2MzBtGUCdGIOku0rHT3fYaEMaTeOXv+fo4l
Ovr7p/lrQ2P4aVynUxBhiZIc3YK3uxoDC6tm0YizJWJ6Hn2afp8xPDub+DtQ
2RK1/ve93zvRGFTc5bgt2C0RY71s78hFY9Dvuc7tO26BvmT1JXNWGYN5w2UD
iWYLFLIX/3SmzRjohifU0A0LJN53TtLsozF44Zxsl+Ms0Is7az3Z88aw70PK
PYqPBVKVUKiXZDeBIz6x8VUmFujg9vYRPnETkL1ip+2wzQLxdG56lKdrAqmC
oTXmS+aozFFpItDeBFKcdwtG95gjZ72tXx/5E/7RX+xy3xxdcHxmEh5tArpt
N9dPnjNHXSTyWuwZE0jzsTT5u98cCZ/KmWG5bgKnNAytXzuYo8v12SuzNSaQ
HlJ51FzZHJFzxZsc2kxAzX/x3B8WcxS81fq8wJAJJOXkRTF/M0PP6pOKnGZM
IDqBzYTSbIZ+bZfeNc1oCqG9qyqW183Q5OW8DyuCprBpj+VUbrwZ0rrz93a8
kinsqA1IF/c2Q4lva0SCMFNwxt4tsRibIaHxOs42F1P4mixkryJohphLgo8m
BpnCCY2RlsU5ErJzUGiqPGIKrdtWOSTekVD+ZLly0GlTuIf/0Eu5R0JLlByH
vVdMwe66pppVFgnJjqYmrFaawtjEH+fKMBLiRo3HucEUxH+edaPYk9Dd4ZrX
QV2mwKEWJ+OqSEIWLR6bPb6YwkUl84EsZhJiSN04mzxvCjJZqQ8jvyC0wJZ/
VXUjBrvVRHfXPEPIySBH4oQABqQzZ36pFyJksbN8kk4Bgw4pRwe2Ewidpt8h
rGaAgZ9UZsdpb4TOOxaYjNpgkPXxpr61IUIOpm2VTTsxiOjl3u+3FaE9sjn4
jr0YfN58nS1kCkNGexie8hzFwHLuZfebUgyNlO1vTDqFQXnR7HT8fxjS4j2W
mXgRA+e21u5ycQyRjWcSL5disP0/C3LmR1NU1iGzJ6YOgyuxobkTeaaI+aqd
4b5WDMb8c5RyyKZoTfJz32gvBmfxAM8/XKbIgKPZU3UMg6O5Q5TOVhN06uhn
1sQ5DFpH6L4EpZggma5X/W4bEPCvSz63sTBB+8Xu39ZkQXAzeybixqox0jJI
8z7HjeB8YXBNXb0xMps89dSHH0GL1Enc/JAxEtVxTi4TQbAQVSoiqmqMLIa9
bJ9IIzhDOsB3/7sR0tIVjrZQQuCbPNb1pNgIPSk/2GmhiSAP0Ssm7TZCx0cT
1x7rI+A49NIGhIxQvuzhnyUYguSoc4/tewzRjXFHXh8rBD4zdC1ncwzRNdP1
oiwHBEdGhC44Ohiiig8NHZquCOYcP21oZjVErvKv2yg7ERxMu46fbDNABxu3
Vpj5IlDX57ZsSTBAmqp5cteCEJADZHbXYwaooOpA+4kQBPcYxm0UFvXRxJ1v
0HoAAW/krYSxKn0kOnCv8FM0gh5PHlfPCOJBw25xx8Yi6KuX/m6joI8+dVi0
xichMD3/WWTmqx56cyqDzHEKQbHxlaKxYj3EH3LcKiQTgYMn4zTFVw+d4P10
TTkXwfbZze9iRPSQc5jAakw+gkL6t/GCvbpodj37tGwhAvszms8jcnTRZuVg
Z/+bCBY/5/oIUHRR+RS9/4EyBGN3i57qsOsiUVzx9WAlAu2FHXWcL3QQmw17
+kA1gqbax9HeCTpo3vj5MfVHCNzMhM6sGOoghn0/H+56isDaRlrPdUkbBd1a
OijUhOBoS1+55H1t9OoQ6wn1NgTcDTp1FeHa6HBcuczH1whK4s/xJ6lqIy8J
n12BnQiON1w06RrXQizaq+JGvQhqD9isDhRroTtlhccqBxCoXL2R7OmjhRqN
+ijhnxDcurjqoyiohfY7QN3GUSK+HHRd93s1kbIabw36huDawh2O6ixNdJGR
PqjpOwIxL8bhUEdNlLzG8vjbDDE/mTuZozg0EWf8zgcTc8R60t81N9eigcLU
Ip6oLyFI8GQ4ppqsgf5c4MREVxF8mfd48clYAx25UtrqtIEEpazu9+yW1ZGT
SWSHHBMJwqbIkwyP1NG9W76KH1lIcMhicUr7oDpy33VzvJuDBIP8Nqli6urI
mwWmo3hIsLExtYOhUw2xcmd6ufGRYOfMUcMgCzXkGl+wlVuQBBGboMegURUN
Qt5SjBAJmKW86NY0VVGEl3WWiBgJ/GVtvXQqVZC1n5JppCQJ8BYtH1ZlFbSb
fpNimQwJClyjpl9fVUZK1Rn6fAokwN5tvM8gpIx2udny6CgT55v/YlBMV0Jv
JHO3nlQjQapT38r3dUWUY2Dr81iTuL8Dj4xUrCKKWLuiWKJDgn79wiGbaQUU
8jjzJOgTzy8Y1/p5nwIyENnkkWdEgpqxWrTvgzwKDhB+ccGUBIHOk75ZTvKo
iamY7SiJBAMV4ffkXsmhGxt+HhSyIMHbP/Zn7xrLoTTTE59HrUhwSjvmenmd
LDJOjPMMtyWBFdfNHWY6sui93amwj/YkSOyVKXxxSwbZdKUyHnQiQdK5Rf5m
KRkUEWWk/5JMAgYjSdHKXGm0oXiczcKVGE+87SttFmlkLt9/4Lo7cb+HjWWq
KVJI5/IOwVYPElz4dFZAcEESmbHuecW2iwTSS/ceHDooiThDxS8KehHjqXyz
sn9GAtWi6DucPiRooph3bN8tgTQcetxF/IjzJ1h6738SR8L3tl1c9ifBZJhM
yBpZHGU3HDk3vZuI1xuZ3UcviCGxX9J/q4NIYPpnxUgjWxQxVIhI+P9HrI+V
OK3WwyKInlM8SXIvCXS+FmeYhwmjL9YPux7sI8HcnRjmQmchJBZEl+QVSoJH
d2xeaeluQ2R9r9GJ/SRgyXn0u1JtK1LvdQfHcBJsd+/TZ90siESVrh/AI0ig
unrxsy2rAOrOeRLKepAEHENuvU2M/Oh1YXidaSQJvuU/nRCe5CP62fDdJw6R
wNn4pa/XyGYUXfi+NT+KGH990tzR5k0oUVXuQcNhEohF6vd0VfCi1Q7rby+i
ScDHkyXIW8KDTD1/Uh4cIQE3n9y8Fx83CjZsgpIYErB3R54IpOdENViq2pGj
RHwchC0Vm9lQyn8NrXbHiOfXqb8RcJYF2T0e2ch6nASSE1da/0tkRmOhg60V
hPU9BuWVbBjRE863sg6xJAg46+Ncr0WPPvFZtHcRzjd4z/lUgQ71fBGqsDlB
gosGHpvXvq5gb2wPVj8kzLbim3C0dwXTWYvRfUz4eMOe6T8tK5iRScHDesL+
2NFX0zdXsE1e6o+fEla0vJL0OWAF85W6cL+ZcAP5y2zzx2WsjN33SAfh4f/C
353pXcL8e/o9xgnL5aWd3/p8ATsfmha8KY4E+3SOzWvVLGAHtFtebSZ8+12Y
u1PRAsaYPq+2hbD65u1bkk4sYE5TKvMChPXPSp//rruARR1YPShC2PZ0Yy5+
6w9m3S1gLE845MRKTtCpeexPgRGjCeFKkenZuOh5LO3dK2tTwjMNI66Xguax
mBtOp7E46np6sfktaR4LYVHmMCN8/MjFHP3lOax7zpLBmnDGQZ0c9pA57Pqp
P0/JhO8Gh2dXOcxi+fIOobsJH3wkmSZmNIt9cfl2MpCwNkfvsQyFWexib/zN
IMKPq4yD9jLPYlyzJX3/EW7+y6ovAb+x2NhW7VDCfdk3h85q/cau0u9qOESY
Du+Xj9j2CzvM/5wlhfAz3gyRjyy/sFDWn4yphFMC0SaHhRmsyHsTXRphNrZb
K3LvZrAjiuTZk4T53A+9+ZQxg2XsutaeTlh+iuuQ84YZ7KpBjksu4WuqJ094
d/zAgvma84oI9/KYa+fd/YF5BNTvvkGYY3Z14k3mD2xjV4faTcIxdZHuyPEH
JiawvaWYMAX5Kku9/I6lGr0cKyXMRNEd+NY0hcVv3Pm3khrPqFGdQ3UT2KVo
3vjH1Pt5FE7dzpvAruq2q9dT72ew6/pY1AS2su3WMNXma285PLQnMHm3WpMn
hIXT6r8YVH3D1M8Y/cAJv72YfW69fBzLkJyWaKHObwP6cfrqGLbx5uznN9Tx
7+pMXT86hp1c+5X4lvDwgr/4IY8xjKvtq2QH4XStJFdvnjGssLTat5PwWHnL
I7XEUexL0cDrbsJ5+Xap74K+YP053lF9hEP1PojZmn3ByqeeMfUTNusJefRE
9AumWSN6nuqfPBnfS96PYO0XHt0bIGx18i0lxnYE+1lx/MMg4YXDbmKiKp8x
LRH99WHCb/jGHmazfsbo0xnjPhO+eT+KsvHrMMa2v3WVavLPvJSZq8OYaKr6
4gjh0qD+qWc8w1gL/9nhUcJVpQ0Rb78NYW+ak+O+Udfr7o6igOh+TGbY4s9P
wkmCl8KYdPqxB6SrTtOEs9t3G5b+7sOM9XlKqL6rt9D5Y38f5jVqQpkhPMku
uiEm8D3mYwiFvwj71YT4Zrn0YGnf/LjnCIfv1VHS5O7BwgrNd1J9QnT9z7vX
7zDe76ZFVF8+mZ25zeYd9sgqTmOeGk+vR0+KTbuxl/Ryln8IOzJtFG5Q6sR4
CzeRFgl7Pe4Y95nowPAHJ45TvS/8UvWGWx3Y20CGOqpP9qvYW0t2YFrJ2xWW
CKd6ls3d1HiDsXVKMSxT56vFOH3ydjtWU+CmR3WjWoeUunw7xrh+ZR/VfxkW
KPWir7HqtKNvqD5426Kqk/0lJlO+68wK4bP8fTYCaS+wTiXyQ6rvxIcMe9G/
wLwtfEap/uaWzf1tsRXTMWw2+EvYZ/XT/rWxFizHoK6f6uP/RTJZ+Ldg6wcP
rFOd38l85dRgMxZrbiG9Svhdscprvu4mrL1MK4Rqe6djikrQiNmlG/ykOtSN
Yw+naSPGuVWCY426HnddKZ6uB6ycpKhAdUH7CdKecBxLCb7uR/VQ/7UG5ZCn
2MsA7mNUi359pvcr+Am2snw1l+rra8yqR33qMcV1yRaqR9gUykx3PcY0QgQG
qZYWsJdm2P4I04hU+U11iVrWtnTHOkzB46nQOnW8RlXnybYPMHktAzWqFWy6
ebZY1mLKFT0kqm/7CWy8alyNOYdHBlL9M9QgMUD/Pnao/tAhqtViPFdltauw
shsXkqiOSIk9MqV2D5uRGzxH9W4pbNzXoxKztzErpPqrUdLQN6fbWAPjywqq
97i1dh+wKsesvCPrqJ4KZX+5bFKKTbiYPqM6LMUZknRKsFsjiq+p/nUl5wGH
yk0sidugh+pDD97fPi9dhB3v2zNE9Z83QjdEha9heSaPR6n+/QbXdJYrwDpM
VaaoXly3FvPnv4gpDTbOUL2q3sEeyZSLlW05Mk81U/O9GdaJLMxuynmJah7Z
xhcqrWkYl7ftX6p1eW5Y3rCLwxb2Ba5RfbE0bbqHMwxj2HJ9nerhmAf+Pa+1
cB3P9f/xyRvLN1LiD+BnTOL+x4+mvy+KjsTjzA3i/3N+Zcag2ArDKby498sK
1V1bgm9MZZ/F92S0LVL9enToQf+NXNxp+M0c1c+r3V+21lzEd7z9M011Y2L7
UG1LAZ68C01S/bG0aNEl5BrelVDxhWrPsz70LyKLcMxSf5DqvuhtHOj4Tfz1
za/dVG/37d1Sl1yCR1978JLqbqtsMdWMUhzTLwWqyapOCsXny3HJ0Ppaqtu3
sGkJX72NixrPlFFtt9pinFNSiWuVWl2hWvKraCl4VuGX3XYkUP25/6/yX9/7
+FTu5oNUX2sfqNILrMbtDsz4Uy1Sm1dfGVqLq65xYVQPlh5CkxEP8DuVZGWq
LxVQWmSi6nDNlWpBqgWTud4WxD7CTfZ8+kldz5tcU0dOZz7BWbNfnKW6a+8D
m/HSp3h79sdDVOfEf600b8Lx7MYfHlSzedwwWVsBnLNseRvVp5MZ2OrUm3C5
wje51P05mSVkMvakCffhro2g2u6yVsRm+2Z8z53z9lSz39/dGx7Ugn88aLlG
3f/pn5qK5C+14hmSvh5Uf5/80LNdrg2/TiegRLXDn1mWlJo2nMzxYpWaXzg5
pcM/v3mB+9wWukZ1pmGy0SWG17gL17E+ar5qs5OcTNHtwCtcJAWp+e8IuZJB
JLYDd2CK/UDNj/LbDUVqmjrw2bHOK/+TL/0p5BFyJy6vuk+MatsjiQ9MQ7rw
uT43/gXCL4tHEhcK3+ElGZu6qfn6aEVYQebXd7gmB08q1YpVy7UyKj34hrqN
+lSfbtg04fq4B9c+N3Zxlpq/us2c773rxb23ezr9pq5HuhtCe1n78T5+tZPU
98m2jNQCK/t+nDVRQIPq/7buE5HO6MdDl4T6qe8jek0NsU88A3geR4ws1fq7
cUl3wQ/4n2dJD74TLm75oECSG8LDdn+omKDuVxe8XHTvEK57JtmKavSxSOlv
+RBu/9R2mPq+G/yzV6VO9SMuaCXPS/Um+UV1Fd1P+MkBnT1fCWOWbAXpRcO4
P0vOFPX9Gcx+3OtY0zBuO/Q3mur0zh/C+0aH8ciGRAaqB7w7r1jLfsYt80cE
qO/fw4cvFtKXf8a/vfyt84ma/27J3jhSNYJ/XHWz/kBdf2zm5YEwipttFce7
CBfyfUoVGB3Fm8u/SlItK3Zs98uNY/g7r+sp1PpCW7taWN15DFeSnLWm1h9k
H6mslaEx/JwqC7RT43ef4VD2ylc8W3sxto2an3Y1m4DuBK4hOq1OrX/igvy2
Re6awDnTDCIbCDNH/P0jc2ICz+E4UkOtl/hStO+daZnAefd3alHrK/W7NyU9
3CZx7vh5mTpqfmVI2fjzwBQu9pa+7x51/1dYdgrd+YFb8WhEUus7H+eAZLmO
H/gqhf8itf4b/X1CT2v2B/5s91L9dWq+NXh4xc7gJ/7150O6a9T906a4L6bl
J77jlsiJAsLGo9wM74em8XsnYm3OU8fHtX+b7cZfuOnt80LU+rTaSs+BUX8W
n7woWk+th0WPXsY9bWbxgn1X7lPr5ZN31jWrd8zi/DeNygIIe/G1bQ2ImcVf
Ofbm+FHHO7JjHH88i7dGJ/t4Ed4VezTxmMkcvo+++YUrdX3VPHn422wej3nz
ZoFE2EXCQuaz4wLuXc16X4i6Hw8/Kbnku4APxGtt30Y49bWuvNuBBRxjdV8S
JNwQraDUmruAt9vGGfNT4/eGS+POhwVcOSniAQ/h5aP9xjF7F/GFwpYjTIRv
vgtz401ZwrVBX+8n0b/8SctPIjWs4FvmtS43ED6w4z8Plk/reGxuw283wkcH
THcoqNDDM28333dEv1V5sfu7px8jRJ8RumdJ+M0Z6YbG/cyQEqX8uYro1341
b3Xae4sFMsNqczcQptN6tc2ing3Y1dgnHIl+j14j1fl2MwfkGV4vyiL6QZao
Mavty1xwe0HTr4roF1cPxzdsTeEBP3lcsJvoJ6O3D+sq3OAFvvOi851Evzm1
ahG0Xr8JvPU4+VuIfrQH36gx3bgZrmizXq8n+tXGm8If14f4YE/J5odniH5W
8maWvOL4FpC9vr7gR/S7sSEb5YSm+OFgnOKyCtEPD7h3MqswCcLeBH7GTqJf
vrNrKWkHx1ZY6sjJOk700wmJkSM3FbbBo8zXJitEv/2q2f4jm7YQBKqVqCYT
/Tj3W/lMPQNhIGU+kWUOIYH7Xw+xFDcR4LmRfd+D6Od5LMYcv3uJAlu/2qcH
RL/fXtnsfeiYGHw/86BqJIjohyLenfW3E4drJlk+zIEk2HkhqvF8uzj4HmsQ
Nwog4vEWDxjwlICfKalD+n5Ev8X3qKtiWALev/0QYetDgs1PawqGAyRBI++3
n7sXCb4c2fleZkYS6iaf3ZfdRdQ76M7wQqQU7E7aZcS1g4jntvJdA/TSgNzy
1R66E/34jjJV8SxpCN0u6+DlSoLWIo/O37wyoP1UXGCbC9E/rVeO9hTKQMzt
7Lw8JyL/7Kl9biktC5ZHFlJVHQh/Cdz6vFoWXHNOKCbakuDUM/7nZUgOcvFh
zU4rIh6V0aRtzXLw/ra1MmZB3P92gsplijzcco3aFEQi6qM6w2+l7+VBdrfF
vQpTEvjK/vm7dZcCVD2RRr+MSNBZsivx8rgCbNzZtnFKn4ifdlhvWYgiqLf1
zbHokqC8W/Fy27IizHQ5c/RpEvVr78QjuzQleCkV3nFTjQQG4x63drIpg8Me
DlK+MgnEWMOZYi4qw9SvSUYjBSI/6+toyoiogAanNMYsS+STV6sPtQtV4Kzl
w0ddksR6DA+/56asCg/2STXaiBH9gcTZwxvuqQJX8Y+aKSEiX43tvPPUVA1m
px9v1REkQUtt132WZjV4urjR8A4fCZTnZVk9pdShaqNLrxwvCXQEDX4Z7FOH
oyc12Sw5SfChsQj53laHoV6jY7msRH8259fGMacOl0w8dyQxkeDWDvHVEEMN
OFix1yNyAzFec7183uMaMO1Xo56/imB/XdF+rEkDHi7RHd61hOBNVVBZNZMm
fDu+vtd1HoHKR4XsfitN2Jr/Wt7lFwKHHLPqtAxNeJvJt/vrdwSsb+8bHX+r
CdG+qgMPviFIzYn+u8ivBR5HODKFRhHQnzbZJ+etBQFHDhYnfUIgtNETK7iq
BbbJ1TcVPyCY52h3yB/TgsOWUc/9exGE5uc1Dsppw+gFg4r+TgQ3K2vCSsO1
gUcw1I/6fe/AfHebzANtMJT1qBhvRXCnye70xII25K/PRuo0ISBt40/WwXSg
0LC/j/0pgoML+mOtCTqg+kT3qvwjBEXM3rPsTTpgebDtqWMNguyrPQZ9rLpQ
ulDuvlCJQPxJ8fikvS6YyTOvTJYhCAt82Z6SowvVH6oqfG8ieGwy49fVrwu6
YnFaH64Sz3dlv2eQkB7kRaVeuJmPwCkVy4wP0IMi3ul7kzkI8ub3yI/c1IO1
rtPZ8ZkIBvNywufH9GCjioyUxCkEX2DT9FllfYi1SRI3TEKQdmCi52CYPqze
u1BaEovgeznf/GCtPtBNFW05GY3AmZ/UuLiiDzVMbZcOHiDM0jK3y8QANFRG
MmtCEPAkXfGzTDaAGn/eqeAg4vmT27UOPzeAHc0cdw76IsjgomBqXIZw4lqB
9tQOBOUv3y/kuxlCRL4SfRgFQRBnrYB9niG0cXupOTkgGO77Gp48ZAjgezwh
zxLBomKEGqO4EUSEZWqbYgi47y5f1vE3grfnpdXn9BF8re9H07eM4JvO/npO
TQSezjyO0xNGsCzNmH9aCcHZkMvnojWMQTDsu+l/0giaH8klVUUbw5239/eT
RRCcz2Qf1HhkDB3iT5mu8yOQ+26+35DOBHYoFOU4cCPY3tEddMrMBK78Ub7k
z4Ig6Wsg++kkEyjIMbBJ24DgQIrdxKaXJuAWl2LNPIfB3/I01RF2UwjmPMPT
P4aBzc6ttw1cTeE/21oyuRcDjUz6c+/Pm4LB7tMDJa0YbJ3/Lin3nvh81RMV
iUcYNI4q/VgTwUDHoI9TtwwDZs9noiJ+GLA9/ZSpeQkDjl13TjbdwiBDqDWs
8RQGPGfyC4V+YuCnIKgZEYPBzus/uYYEELyOcDbj3ofB6UbDfRFGCF55X9TR
3Ulcp1hzqcQLgflbx04XWwxOSVT46BJx14pU3JhngMGeEcfhU9eI89MP3PeQ
xyAvuOB8fCOCHSdtb/MLYiCttuU/ozFiHxrxxNsxY1B1lovbmYUEgAagaM4U
MmqrJ5mIPHVF8ZfLhlFTeCGaNBJP5N1tcgO3X3Sagpv9Gmch8V4ajX85WACm
gDXccE84R4Km3YODHXdMQeH5i8iGGuLzc+ezlC6bQkDO5ZZLPURfm57kf+mU
KazcvKBlskQCjwdLkT6HTeFLDNaTuM0MWNkWHIwCTeHl+H+OEkZmEKI/ImtD
MYVNlx5/TvIxg6trynVXTU2hlPtR2ak4Mwjc0OMpoGwKhS8+Z7jeMAObT0mq
HQKmcF74jM3h52YgEtGjX8NgCv2aw7rG42ZQ2TDC1TxjAicyfEnP2cxhrlW7
ceOgCRyoOB03q2QO7frl2463mUBggG5ujIM5fLolEyBTawJ13hwtTeHmUCE/
p/mn0AR2CmcqVJ01B/fntaEb0k3AU8ywPKDGHEwTW9YVDptAxdg5n7oec7j0
4TZdtr8JrFjsmwj8Yw598DxQw5E4/i30bO9WC5iR9pf7rGsC5c5CIVOGFtC4
mT16QMIEWFdm/Zt9LEDQx31vP5sJ/Ic5qv1JsAAD6TsybHPGwGdNUX9VZAHM
JW2sWR+NQSInwTHwuQUYf/W9xN5qDLFFXlevjVtAAVNo/ud7xtBn97BFh8US
EvfsmZ69ZAw5eqasWUqWMOA/OTGdaAxXxsPjzzhYQpDEU2ZyqDFsHHy12SHC
EmTcJhUzXY0hYm9pbFCOJVHPvDtAb2QM8o/VhSRrLKEubF3gq5QxIOcv74re
W0JCr03+RTZjuHWL9Oz5oiX07gzlgN9GwJkvnmq+1QqeJc09l/9gBN1vFIKT
ja0gaOAjj0sjse9bP8bs8bYCs+BXd5ZKjcCb6WkZT4IVNOEBKu6ZRiDBbMvp
VWQFP+oTX+tGGcFooZs1XZMVaClMrHh6GQHLidNX9ny1AmZUXitFMoKjYqFy
hzZaA2pXj46VMwIHpiPt5krW0FHloRPKbgSiyYx2oU7W0CcHP/KmDcH0ufGy
Xrg1rHNXGfn1GALuUPi8Ndsavnislt5+aAiZeXeeL1dbA8XqQ9+VK4bgHWN8
JfWdNXi9Cvd6n2gI6dfms3oXrIHn6uGPCUGGwHpm14MXgjZwfO3WjyFbQxh/
NLEYb2wD1wS3/risZAjNCUu853xtICKp5Ww+pyHMcNT6WMTbgCIw22z/ZQDH
By+11t+wgT3X9i/4dRmAR7hyYG+zDaRmuXlo1BpAttU34dpvNuC9v9kbO28A
rx9I3/7ObgtV9qXcmVEG4D7JEd6qbAvHx98/vOdhAKYBYk7BZFsYdoyyXtE1
gMNXhvxKD9gC2Aw8ERc0gDsHhO3Ms23huycb5C7pg8XpFOeiWltwfZ8esK1P
HxSDL5282WsL51aDc0491IeI1P6hfcu2oFzl3LtwXh9qsXzW0yJ2cIRpi2VZ
pD7YNjDudTC1g2Oe3e9cXfXBJPbSaJe/HYQI66eMqulD/IbBnL+JdqDqyNYT
xaUPz0Svbo27YQcjIxyOO3/oQWD86fqW53bAIMCoyfpCD9yLJc/dHbeDmUbn
5hclelDCNZbozW4PfR9SbUkJemBl5FpaqWwPlriiT6e3HozRmd3c4WgPt8ox
kRpDPRhl82x4HmEPPk6rShp8eqDZJ8bSd84eLty6O/p+WheGJ7gi7tTaQxHH
wV90bbqQmXui8kOfPdxvf/c+9JounKa/JH5nyR7e692v4jumC+M1nyrNRBzg
QIExuyhFF7IVOyOOmTrAk01fv4Yo6YKxgTkrp68DXGC2eMTJpAvW6Z+eBCQ6
wO6eJ9U/B3TgWpFciecNByh4xaUqV60Du1bzywVbHWAtOm8qIU0HNv9KT1Gd
dADsRV6OsJcOCJUq5Y6zOcKRLQ3CUlo6kHRj7mmgqiOEUu60SjHrgEHAXpEU
Z0cYGh27mP9BG8hBLBf3RjqCjxuj3rfb2hC8QX6iJM8ROsKeZUec0IZXfrP7
0+ocQei78WISRRvOMk5wKX8gjq/cdSRJasPNkNNfIv86wn59XdecOS2oC7md
ySfiBFWdYoGarVqgeG/RPQY5QeTvRS3b81rwvW6GnODvBD9e0x1jD9YCLsbN
exxTnEDC2x22aWqB2kSt+8FSJyjllefevqYJhecYow1fOIFjfrSbe7smhJ+I
rXn+3QlMa7j4Ay9oQqZqkcwfTmfo+NrxBgVqwu1o6/0nVJ3hnY35eW8NTVBk
Euh86eIMFSnxaVZLGrDgnr3n8UFnOFVbfZu/WQOkp/SEw/KcYTuP9bcjpzSA
vNWn5OgjZ+iau3Rr0kkDXrGpByoOOAMo+iT6CGhACVI2vbrqDMJfCiS5BtTh
m/Bk8S5uMvhYi9C/KFSHO0bdhjYSZMjYXBEZ5asOv0v+Go5okoEt1uwVh5g6
fJxdeedoTgZlhp6t55vUYDmAJ1bInQx7eVOSeYyJurx6+enjIDLEPT4eOfZY
FTa4yIQyHybDTY+r+WUGqnCIJ0iuJo0MQb6JoYHlKpBVdfS41kUyJJ8flC+V
UIGBQ8Wf+MrJ0Bf1eMfsKWW4mcxTWVRPBo6M2lnTX0rAf9iFn/41GVTT2qyN
fZXg4alb6U1DZFhSTk9/2KAIG+K6C7b/JMM+2/Tsd+KK8BIwwbw1MpA1VN6+
TlKAJunG63o8LmB6LcDG9Z087N4n2FIu7gLy4SUZh5TkQasr+U+cpgsI/UyW
twyTgwqh1kZZcxf49nPcaXudLBRV2S7GuLrA1ipZw5RVGXix97OxWpAL8IQE
e/1WkoGLDM5CD6JcwPX1V54FX2m4gHduLExzgYDgxJ95R6SAvy3XVzvfBc61
PrNKOCUJxvdVXC6XuUB8jw2v4lUJyH76gRxY7wImQuEV6lnikHXbd3LtlQsM
DF3QXaUTA45xqWnLQRdI7SlivtAiDI/MVzdM/3CBr4tLzqzi24Az8Xbl3jUX
kOCv0rLyE4CzORckqgh77t2leNVVADYVJ+YuEjahfOOYthIgnmfH0bR1F2Aw
UfvvmIoAiHIxWRXTUcA6uUHKZJkfVC95Dw3TU6B2MWl8ZzY/kO9zcezYSAHX
fCW9Sw1bIHskYq8VDwVO4pwq5fObwWqeJTOdcObUlk2c45theeP1+12EO+rN
VgL7NkOASueKDy8FRjK5jsw+3gyaRzQyozdRwLNdYefJuM3Qzfn7fikfBRqz
kd9R5s3AZxD5l20rBdzpxuzvsG2CNnt2CRfC3uROh5hlXjjuc8PyAmFP65Vg
3UleGE3qzpTaRoGQlD3mSS94oeaNloSxEAUS1Y2WAtJ4wT1wznK/CAX8XN5n
baLjhbysqKy3EsT9pJ4WJLZyQ+fSoWUeSQrMXbrZJlLMDRyBh4IohBvyt/3I
TuSGBP1Iox7CPT3psqwm3BD6OWJ8QIoCJa23f/Df4wKSVij2VYYCbxvnpQwz
OeF7b8D0XwUK+GoEfxiXYQc5UsAuU0UKMP+VKjm9ygYBFf4tcYQd8A8yM+/Y
4H2c32V6JQrotwkOriWywTN5H2sWZQqYLaZ5sw2ywoWjOws3q1Jg2w1vtfvx
LGAmSnZW1KTAacn2Bq2TTMA8lGZ2gPB1L5fcl2QmeHEZ13lIWH3NkvWtIBOR
H9SErbQoUG5UL8N1ixF8+Lgm/LUpUMU7+6C7ngEkuy0HSwnzvGYJt45jgLFz
sW+nCXNecBhcITFAKPeP2lgdCjiG2EazttBDDNvrxHxdCliGmbi3wwYwfsFw
eJiwQ93rDz6xG4DupNFeOT0KWGiU7BjX3wCpTBXOtYTXdH/Qld+mg1y608Kd
+hRgkT3EeJVtHd+BN3ILGhDz97596/fwNVzoxBK9L2FhL+0DW7pW8aKVPRPf
Ca+4HneST/+L3/tj/YDFiAIqzZsSxDqW8EO1cWXOhC847DdW3rKE6x2qK8gj
bG93SP6S2yL+9JdskrQxEa8ru8p2wR888Z7P4RDCQ39fjjtMzeOW4Xl77xP+
EnM+tJNzHn/9nYmMTCgQ+PvevkXtWfxshYl5GmH/XIprju5v3HVflO4bwtfz
nu6OUviF8yvcUdhiSgGj549/PWKbwQfGR4W9CJ8UvJjddvsHfqVEmOcG4XnS
crkf5xTuF+TGMEnYxiTgSajMN1xaOv2POkaBW8qPX5f2juLjI00T0YS1juzP
ER4bxsuvrww+JRw3qV9a4vceD/PT6mBCFPj//x+lIRbS5PCP54aKHuT844cF
A2UD//iY56YrEiSa6fsTku7+4+cXHh3+849Pbf+118SMZp53fuRX/1j0LSYy
bk7znrGP2xUsaL6/Ens25B9byTcwzPzjsAT9yUVLmnEtjTo2G5r9Lkq6qDrQ
fN2fKSXKjWY3/uHloGCa0wRWPtAfodl/eWr7gZM0h6z/+kS6RLPI13b60XKa
nbZOntWsp/lumJDKl9f/zGex5O6gIZp/rZnesp2muezm5e0DdK7/a1blN4XG
vDTn92xZoJOiucNP61ueFs1p+ucs+s1pDtNkvBvrTvNfTsfq2SCaH7NXtLyK
pll86uOBqJM0Mwm4nnp1keZtQYOVSeU0v881CuOsp7n5612jpdc0a6QEHjr3
kWZLpmmrlZ80q9t278Sm/7l+Rl1o0j+e4YvPZp+huUCa96PQL5rnzLWijGdp
LkqMvhG7QHPGc88Hjf/4CBt6wbRIs1M2y3TGP16+nm94dYlml8b6zqcrNBsz
XRul/0uzrG3ygtU//tvhIPL2H5cOD+35tEpzjvSzY1JrNJ/YU5L53z92mwmr
mf7HmLZrq9Y6zYpH9Aai//GWBqEf9f/4/13lf/1/AI41z1U=
      "]]}}},
  Axes->True,
  AxesOrigin->{0, 0},
  Method->{},
  PlotRange->{{-90, 90}, {-80, 80}},
  PlotRangeClipping->True,
  PlotRangePadding->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{
  3.5140162474454975`*^9, 3.632723569437003*^9, 3.632724841289199*^9, {
   3.6327248867221093`*^9, 3.632724927988943*^9}, 3.6327249762359133`*^9, {
   3.632725021296815*^9, 3.6327250356831074`*^9}, 3.632725501878447*^9, 
   3.6327255704818335`*^9, 3.632725646669218*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[StyleBox["sp.int", "Subsubtitle",
 FontSize->24]], "Subtitle",
 CellChangeTimes->{{3.5140155335079975`*^9, 3.5140155491017475`*^9}, {
  3.63637330054379*^9, 3.636373302431426*^9}, {3.6363743964528675`*^9, 
  3.636374399557327*^9}, {3.6527678392019377`*^9, 3.652767861089439*^9}, {
  3.6527679697469215`*^9, 3.652767990729594*^9}, {3.652768071296999*^9, 
  3.6527680742142925`*^9}},
 Background->RGBColor[1, 1, 0]],

Cell[BoxData[
 GraphicsBox[
  TagBox[RasterBox[CompressedData["
1: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
Nd2Pk0jyqAkBV3cZzTkO76jUalnYXebpeC+i2i8XPc5ftf6upvciOlGPSnbU
vvci1jaFUJC9dBtXw3Jty3iDkNTeyUDRo3Awvx2Qtw8qA0BW1n2RH0kG0giI
L03dkQ2MA0RdkJzabJHNcpPQOBvV9kIz2Vk7mNop14B0LcM1OVxyX3Jj2S8S
rzBbN7bY5wg5EqGy/lbIG6h4dfDtjqgdFXvtnjfwiIt5q6BiGOVUuDWoKBWK
DdqzNS5WTTNEWNPGdTrIwhyBc47Da50brSRRU7FbduC1qHNmIOA8h0KCgjGJ
SRqcO/pi0CCnMGM1mcq+4mW4zv3DdQkKT4gqFKeg7TideYPjsyLQ1scw1qkR
IToBolRokJuP1JxYdd/+kDXhnY6zMEfgnLF4nhnryV+RNaNlBF6OmnkDBEHB
6OKTBud2vtiUeYNY9Z0LMlwPCNel5XjGqC7nNGo7zv+mUqlUKpVKpVKpVCqV
SjEK/J1ClHbJvaxVRikla8kMyecNQISDh0Ni1C7A+bwBgqBgnHqSL5fyeQME
YYJhUp3AYC+B411KzliNeL9BlHaJ4VpllFKyMm8wVOCcOHg4JEbtApx5AwRB
wTj1JF8uZd4AQZhgmFQnMNhL4HiXkjNW4XmDwB9rm39eSrxSt6gX9iWtcR87
JIA11XDaYqb9fPx8L2S9sC9pjfvoweNqan7OI0B1zxDPsYyZNxjxKomO1/2p
PPXv5VVTHrw5SFusVHftAmx/D8OpvZLa3wvXdV+nsjwrG8nQ9xtkJ0yb7FcG
Ds1/Tdy1Eb4+X1KdqnsfdFwY19jTMSH7qLgeBeBWvKipFTtn+t7Zq04VIWKD
wCZr9Gh6FuS7RocxaskCH+5LsXmD4jhyWrPnDeqPZKW67xmdNyhMddcI2mKm
FXfW16230Eaoj80bFKbUGgshlPpmiPNYBswbxK5Ol7pf98fxWC7YimYevGlI
c949FWhtKPDMGShc9p/m4yL2EjHkYHTestUMyJemv6jpysChaRcV8nDESnZK
ngyBx4VljbX0K6vjrMQdAsY4GFH9U2vEnGkNV7FN1tQD2kELfnk/czQxF2fh
cqhD4XmYQRqXN/ArMG9g3LfYvcmUat+SE7DUFAJfWF6y5A2M+xa7N5lS7ct9
GfHQFLK2z+/0eXmD4uRI8pAXb5Y7vj68mUgLV6q+4V4CPO5Y40ZwZt6AtD8z
b3DvMfMGnJY8bzDtWldg4GoGHRfyGiv3K8vzvIHAwPHYOQHTj+eAlURFyrzB
XepoOheHfN7gpXDOqLxBYPrFkzd4bRxdv1Mg/+1TU96g/mjpGnxheYl7tKD7
dwrkv362Ds7H5w1W3XM9LG/A3aaR+Xb5pMk1a8WbjBTyoHtNWGPUDfpOSd0P
6kxGdeYNCmZnL60MniNxRN6g+wIm8wbd8gffIjVvUPc+9Lio10xyleiLScjv
FOwYdrxxT7bPX0nUqUIiNaGCX95n3uClqCUrPJ7FtIxaXZ/xOwU1RWCvv6cd
5H2NbMU2d+ZvJb8EvrC8ZHkbQNPvFLiNPjZ129IeViF/EJnZaZSFQrGr0yVP
3qD4lmvDfbR40Zo3GIfkv8CuP5Jf1Q36hrv72pv8OA61I29g2e7rxQhgqVc1
6K+EfVSZN7CIuy09zfOwWyC/U+C6k3tRv/VTWQ4B4UwxDoyU/4C9yxmujuXU
SAt+eT8nbzDtXtIiYQXza3Q8wzm3zht0twHJGwhdPCZv0N1mSd7A+PzDs/MG
k0/E4RYKLc8bkGecOw/Xpr7lFEzZ8SYj+Z83qLuuMcgGfcPted5gJmrmDfpI
ZMdbqTJv0C3LcPiFkzfoW8+bYpJ5gyZ5XlJxdi2nRlrwy/s3zBuQilqvMm8w
bazJforKjryBuq9FlryB3OOD8wae9yJa7Hewcb96aH0mAUr+P4hM6zTWQqFB
16XdlxzqTSX3Ua1vxZuDFHXjCZ43kEnUBm+SNwg5GIe+3yDzBtP0VnmDpnvJ
7piEvN/AGIeFeYOoOdP9XsS6xngOzbzBXZk3eOk98wbnLXfqN+V83uCwvd+g
aBabN7h3wdXUDORenMAXlpeEnIDl/Qb1/wPRaN+OJ/9fF+s2If3OkfNn2n2H
M2De4AxdnS55rhs5HvUek2zWjTcHyXOXd0eqp2WxQV5yzJnDS1CdeYMa29OL
EcDYqayQn5YXDAtXPJPsVwYOLckbnGPW50uqU32ToWP9r5eF66tiw8jgpzpb
DgoOexAYqdg505o3IBd2bkA9owl+eT9nNP0LQuYNuIO3T+F5g0DZrnifX/xR
WqviNvyRZXWMJS2ZIZh5gxEC58TBG/eE6iCNezI/VnOGGGciXYJCgoJx6km+
XBrkFGasMKlOVDBMqhMY7CVwvEvJGavd8wapjFJKVuYNhgqcEwcv8waDlHkD
BEHBOPUkXy5l3gBBmGCYVCcw2EvgeJeSM1b3vMGXVCqVSqVSqVQqlUqlUilK
+bzBpsoopWQtmSH+TneZ2OCcOHg4JEbtAjyHEzAaUEhQME49yZdLg5zCjBUm
1YkKhkl1AoO9BI53KTljdXH+D+oUni8=
    "], {{0, 40}, {1384, 0}}, {0, 255},
    ColorFunction->RGBColor],
   BoxForm`ImageTag["Byte", ColorSpace -> "RGB", Interleaving -> True],
   Selectable->False],
  BaseStyle->"ImageGraphics",
  ImageSize->{1479.1, Automatic},
  ImageSizeRaw->{1384, 40},
  PlotRange->{{0, 1384}, {0, 40}}]], "Text",
 CellChangeTimes->{3.6527687367159376`*^9}],

Cell[BoxData[
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"f", "[", 
     RowBox[{"a_", ",", "b_", ",", "c_"}], "]"}], ":=", 
    RowBox[{"\"\<Sqrt[\>\"", "<>", 
     RowBox[{"ToString", "[", 
      RowBox[{"InputForm", "[", "a", "]"}], "]"}], "<>", "\"\<^2-(\>\"", "<>", 
     RowBox[{"ToString", "[", 
      RowBox[{"InputForm", "[", "b", "]"}], "]"}], "<>", "\"\<-x)^2]+\>\"", "<>", 
     RowBox[{"ToString", "[", 
      RowBox[{"InputForm", "[", "c", "]"}], "]"}]}]}], ";"}], "\n"}]], "Input",
 CellChangeTimes->{{3.6527693849167128`*^9, 3.6527693849167128`*^9}}],

Cell[BoxData[{
 RowBox[{
  RowBox[{"Error", "=", "0"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"zstart", "=", "0"}], ";", 
  RowBox[{"zend", "=", "10"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"RExLarge", " ", "=", " ", "159.7"}], ";"}], 
  "                           ", 
  RowBox[{"(*", "  ", 
   RowBox[{"[", "mm", "]"}], "   ", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"RExSmall", " ", "=", " ", "24.5"}], ";"}], 
  "                           ", 
  RowBox[{"(*", "  ", 
   RowBox[{"[", "mm", "]"}], "   ", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"AExHor", "      ", "=", " ", "73"}], ";"}], 
  "                    ", 
  RowBox[{"(*", "  ", 
   RowBox[{"[", "mm", "]"}], "   ", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"RInLarge", " ", "=", " ", "281.3"}], ";"}], 
  "                           ", 
  RowBox[{"(*", "  ", 
   RowBox[{"[", "mm", "]"}], "   ", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"RInSmall", " ", "=", " ", "19"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"AInHor", " ", "=", " ", "105"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"AVer", "           ", "=", 
    RowBox[{"68", "/", "2."}]}], ";"}], "                   ", 
  RowBox[{"(*", "  ", 
   RowBox[{"[", "mm", "]"}], "   ", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"offset", " ", "=", " ", 
    RowBox[{"-", "16"}]}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"offsetRay", "=", 
   RowBox[{"offset", "-", 
    RowBox[{
     RowBox[{"(", 
      RowBox[{"AExHor", "-", "AInHor"}], ")"}], "/", "2"}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"CExLarge", "=", 
    RowBox[{"{", 
     RowBox[{"offsetRay", ",", 
      RowBox[{"AVer", "-", "RExLarge"}]}], "}"}]}], ";", 
   RowBox[{"(*", 
    RowBox[{"[", "mm", "]"}], "*)"}], 
   RowBox[{"CExSmall", "=", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"offsetRay", "+", "AExHor", "-", "RExSmall"}], ",", "0.0"}], 
     "}"}]}], ";", 
   RowBox[{"(*", 
    RowBox[{"[", "mm", "]"}], "*)"}], 
   RowBox[{"CInLarge", "=", 
    RowBox[{"{", 
     RowBox[{"offsetRay", ",", 
      RowBox[{"AVer", "-", "RInLarge"}]}], "}"}]}], ";", 
   RowBox[{"(*", 
    RowBox[{"[", "mm", "]"}], "*)"}], 
   RowBox[{"CInSmall", "=", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"offsetRay", "+", "RInSmall", "-", "AInHor"}], ",", "0.0"}], 
     "}"}]}], ";"}], 
  RowBox[{"(*", 
   RowBox[{"[", "mm", "]"}], "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"yExL", "[", "x_", "]"}], "=", 
   RowBox[{
    RowBox[{"Sqrt", "[", 
     RowBox[{
      RowBox[{"RExLarge", "^", "2"}], "-", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"x", "-", 
         RowBox[{"CExLarge", "[", 
          RowBox[{"[", "1", "]"}], "]"}]}], ")"}], "^", "2"}]}], "]"}], "+", 
    RowBox[{"CExLarge", "[", 
     RowBox[{"[", "2", "]"}], "]"}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"yExS", "[", "x_", "]"}], "=", 
   RowBox[{
    RowBox[{"Sqrt", "[", 
     RowBox[{
      RowBox[{"RExSmall", "^", "2"}], "-", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"x", "-", 
         RowBox[{"CExSmall", "[", 
          RowBox[{"[", "1", "]"}], "]"}]}], ")"}], "^", "2"}]}], "]"}], "+", 
    RowBox[{"CExSmall", "[", 
     RowBox[{"[", "2", "]"}], "]"}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"yInL", "[", "x_", "]"}], "=", 
   RowBox[{
    RowBox[{"Sqrt", "[", 
     RowBox[{
      RowBox[{"RInLarge", "^", "2"}], "-", 
      RowBox[{
       RowBox[{"(", 
        RowBox[{"x", "-", 
         RowBox[{"CInLarge", "[", 
          RowBox[{"[", "1", "]"}], "]"}]}], ")"}], "^", "2"}]}], "]"}], "+", 
    RowBox[{"CInLarge", "[", 
     RowBox[{"[", "2", "]"}], "]"}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{
    RowBox[{"yInS", "[", "x_", "]"}], "=", 
    RowBox[{
     RowBox[{"Sqrt", "[", 
      RowBox[{
       RowBox[{"RInSmall", "^", "2"}], "-", 
       RowBox[{
        RowBox[{"(", 
         RowBox[{"x", "-", 
          RowBox[{"CInSmall", "[", 
           RowBox[{"[", "1", "]"}], "]"}]}], ")"}], "^", "2"}]}], "]"}], "+", 
     RowBox[{"CInSmall", "[", 
      RowBox[{"[", "2", "]"}], "]"}]}]}], ";"}], 
  "\[IndentingNewLine]"}], "\n", 
 RowBox[{
  RowBox[{"EX", "=", 
   RowBox[{"NMinimize", "[", 
    RowBox[{
     RowBox[{"Abs", "[", 
      RowBox[{
       RowBox[{"yExL", "[", "x", "]"}], "-", 
       RowBox[{"yExS", "[", "x", "]"}]}], "]"}], ",", "x"}], "]"}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{"IN", "=", 
   RowBox[{"NMinimize", "[", 
    RowBox[{
     RowBox[{"Abs", "[", 
      RowBox[{
       RowBox[{"yInL", "[", "x", "]"}], "-", 
       RowBox[{"yInS", "[", "x", "]"}]}], "]"}], ",", "x"}], "]"}]}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{"If", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"EX", "[", 
      RowBox[{"[", "1", "]"}], "]"}], ">", "5.0"}], " ", 
    RowBox[{"(*", "mm", "*)"}], ",", 
    RowBox[{
     RowBox[{"Error", "=", 
      RowBox[{"-", "1"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"Print", "[", "\"\<GetVerAP. Error. default.\>\"", "]"}], ";", 
     "\[IndentingNewLine]", 
     RowBox[{"Print", "[", 
      RowBox[{"\"\<Cannot find intersection between: yExL[x]=\>\"", ",", 
       RowBox[{"yExL", "[", "x", "]"}], ",", "\"\< and yExS[x]=\>\"", ",", 
       RowBox[{"yExS", "[", "x", "]"}]}], "]"}], ";", 
     RowBox[{"Print", "[", 
      RowBox[{
      "\"\<  Rs1=\>\"", ",", "Rs1", ",", "\"\< Rl1=\>\"", ",", "Rl1"}], "]"}],
      ";", "\[IndentingNewLine]", 
     RowBox[{"Return", "[", 
      RowBox[{"-", "1"}], "]"}], ";"}]}], "]"}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"If", "[", 
    RowBox[{
     RowBox[{
      RowBox[{"IN", "[", 
       RowBox[{"[", "1", "]"}], "]"}], ">", "3.0"}], " ", 
     RowBox[{"(*", "mm", "*)"}], ",", 
     RowBox[{
      RowBox[{"Error", "=", 
       RowBox[{"-", "1"}]}], ";", "\[IndentingNewLine]", 
      RowBox[{"Print", "[", "\"\<GetVerAP. Error. default.\>\"", "]"}], ";", 
      "\[IndentingNewLine]", 
      RowBox[{"Print", "[", 
       RowBox[{"\"\<Cannot find intersection between: yInL[x]=\>\"", ",", 
        RowBox[{"yInL", "[", "x", "]"}], ",", "\"\< and yInS[x]=\>\"", ",", 
        RowBox[{"yInS", "[", "x", "]"}]}], "]"}], ";", 
      RowBox[{"Print", "[", 
       RowBox[{
       "\"\< Rs2=\>\"", ",", "Rs2", ",", "\"\< Rl2=\>\"", ",", "Rl2"}], "]"}],
       ";", "\[IndentingNewLine]", 
      RowBox[{"Return", "[", 
       RowBox[{"-", "1"}], "]"}], ";"}]}], "]"}], ";"}], 
  "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{
     RowBox[{"f", "[", 
      RowBox[{"a_", ",", "b_", ",", "c_"}], "]"}], ":=", 
     RowBox[{"\"\<Sqrt[\>\"", "<>", 
      RowBox[{"ToString", "[", "a", "]"}], "<>", "\"\<^2-(\>\"", "<>", 
      RowBox[{"ToString", "[", "b", "]"}], "<>", "\"\<-x)^2]+\>\"", "<>", 
      RowBox[{"ToString", "[", "c", "]"}]}]}], ";"}], "*)"}]}], "\n", 
 RowBox[{
  RowBox[{"yExLstr", "=", 
   RowBox[{"f", "[", 
    RowBox[{"RExLarge", ",", 
     RowBox[{"CExLarge", "[", 
      RowBox[{"[", "1", "]"}], "]"}], ",", 
     RowBox[{"CExLarge", "[", 
      RowBox[{"[", "2", "]"}], "]"}]}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"yExSstr", "=", 
   RowBox[{"f", "[", 
    RowBox[{"RExSmall", ",", 
     RowBox[{"CExSmall", "[", 
      RowBox[{"[", "1", "]"}], "]"}], ",", 
     RowBox[{"CExSmall", "[", 
      RowBox[{"[", "2", "]"}], "]"}]}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"yInLstr", "=", 
   RowBox[{"f", "[", 
    RowBox[{"RInLarge", ",", 
     RowBox[{"CInLarge", "[", 
      RowBox[{"[", "1", "]"}], "]"}], ",", 
     RowBox[{"CInLarge", "[", 
      RowBox[{"[", "2", "]"}], "]"}]}], "]"}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"yInSstr", "=", 
    RowBox[{"f", "[", 
     RowBox[{"RInSmall", ",", 
      RowBox[{"CInSmall", "[", 
       RowBox[{"[", "1", "]"}], "]"}], ",", 
      RowBox[{"CInSmall", "[", 
       RowBox[{"[", "2", "]"}], "]"}]}], "]"}]}], ";"}], 
  "\[IndentingNewLine]"}], "\n", 
 RowBox[{
  RowBox[{"zstr", "=", 
   RowBox[{"\"\< && z > \>\"", "<>", 
    RowBox[{"ToString", "[", "zstart", "]"}], "<>", "\"\< && z <= \>\"", "<>", 
    RowBox[{"ToString", "[", "zend", "]"}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"xstrEx", "=", 
   RowBox[{"\"\< /; x > \>\"", "<>", 
    RowBox[{"ToString", "[", 
     RowBox[{"AExHor", "+", "offsetRay"}], "]"}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"xstrExS", "=", 
   RowBox[{"\"\< /; x > \>\"", "<>", 
    RowBox[{"ToString", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"EX", "[", 
        RowBox[{"[", "2", "]"}], "]"}], "[", 
       RowBox[{"[", "1", "]"}], "]"}], "[", 
      RowBox[{"[", "2", "]"}], "]"}], "]"}], "<>", "\"\< && x <= \>\"", "<>", 
    RowBox[{"ToString", "[", 
     RowBox[{"AExHor", "+", "offsetRay"}], "]"}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"xstrExL", "=", 
   RowBox[{"\"\< /; x > \>\"", "<>", 
    RowBox[{"ToString", "[", "offsetRay", "]"}], "<>", "\"\< && x <= \>\"", "<>", 
    RowBox[{"ToString", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"EX", "[", 
        RowBox[{"[", "2", "]"}], "]"}], "[", 
       RowBox[{"[", "1", "]"}], "]"}], "[", 
      RowBox[{"[", "2", "]"}], "]"}], "]"}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"xstrInL", "=", 
   RowBox[{"\"\< /; x > \>\"", "<>", 
    RowBox[{"ToString", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"IN", "[", 
        RowBox[{"[", "2", "]"}], "]"}], "[", 
       RowBox[{"[", "1", "]"}], "]"}], "[", 
      RowBox[{"[", "2", "]"}], "]"}], "]"}], "<>", "\"\< && x <= \>\"", "<>", 
    RowBox[{"ToString", "[", "offsetRay", "]"}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{"xstrInS", "=", 
   RowBox[{"\"\< /; x > \>\"", "<>", 
    RowBox[{"ToString", "[", 
     RowBox[{
      RowBox[{"-", "AInHor"}], "+", "offsetRay"}], "]"}], "<>", 
    "\"\< && x <= \>\"", "<>", 
    RowBox[{"ToString", "[", 
     RowBox[{
      RowBox[{
       RowBox[{"IN", "[", 
        RowBox[{"[", "2", "]"}], "]"}], "[", 
       RowBox[{"[", "1", "]"}], "]"}], "[", 
      RowBox[{"[", "2", "]"}], "]"}], "]"}]}]}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"xstrIn", "=", 
    RowBox[{"\"\< /; x <= \>\"", "<>", 
     RowBox[{"ToString", "[", 
      RowBox[{
       RowBox[{"-", "AInHor"}], "+", "offsetRay"}], "]"}]}]}], ";"}], 
  "\[IndentingNewLine]"}], "\n", 
 RowBox[{
  RowBox[{"ToExpression", "[", 
   RowBox[{"\"\<VerAP[x_,z_]:=0\>\"", "<>", "xstrEx", "<>", "zstr"}], "]"}], 
  ";"}], "\n", 
 RowBox[{
  RowBox[{"ToExpression", "[", 
   RowBox[{
   "\"\<VerAP[x_,z_]:=\>\"", "<>", "yExSstr", "<>", "xstrExS", "<>", "zstr"}],
    "]"}], ";"}], "\n", 
 RowBox[{
  RowBox[{"ToExpression", "[", 
   RowBox[{
   "\"\<VerAP[x_,z_]:=\>\"", "<>", "yExLstr", "<>", "xstrExL", "<>", "zstr"}],
    "]"}], ";"}], "\n", 
 RowBox[{
  RowBox[{"ToExpression", "[", 
   RowBox[{
   "\"\<VerAP[x_,z_]:=\>\"", "<>", "yInLstr", "<>", "xstrInL", "<>", "zstr"}],
    "]"}], ";"}], "\n", 
 RowBox[{
  RowBox[{"ToExpression", "[", 
   RowBox[{
   "\"\<VerAP[x_,z_]:=\>\"", "<>", "yInSstr", "<>", "xstrInS", "<>", "zstr"}],
    "]"}], ";"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"ToExpression", "[", 
    RowBox[{"\"\<VerAP[x_,z_]:=0\>\"", "<>", "xstrIn", "<>", "zstr"}], "]"}], 
   ";"}], "\n", "\[IndentingNewLine]"}], "\n", 
 RowBox[{
  RowBox[{
   RowBox[{"If", "[", 
    RowBox[{
     RowBox[{"Warning", "\[Equal]", "1"}], ",", 
     RowBox[{
      RowBox[{"Print", "[", 
       RowBox[{
       "\"\<GetVerAP. Warning. vacuumtype=\>\"", ",", "vacuumtype", ",", 
        "\"\< hor=\>\"", ",", "hor", ",", "\"\< ver=\>\"", ",", "ver", ",", 
        "\"\< offset=\>\"", ",", "offset", ",", "\"\< Rs1=\>\"", ",", "Rs1", 
        ",", "\"\< Rl1=\>\"", ",", "Rl1", ",", "\"\< Rs2=\>\"", ",", "Rs2", 
        ",", "\"\< Rl2=\>\"", ",", "Rl2", ",", "\"\< zstart=\>\"", ",", 
        "zstart", ",", "\"\< zend=\>\"", ",", "zend"}], "]"}], ";"}]}], "]"}],
    ";"}], "\n", 
  RowBox[{"(*", 
   RowBox[{
    RowBox[{"Print", "[", 
     RowBox[{"\"\<yExLstr=\>\"", ",", "yExLstr"}], "]"}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{"Print", "[", 
     RowBox[{"\"\<yExL2str=\>\"", ",", "yExL2str"}], "]"}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{"Print", "[", 
     RowBox[{"\"\<yExLstr=\>\"", ",", "yExLstr"}], "]"}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{"Print", "[", 
     RowBox[{"\"\<yExSstr=\>\"", ",", "yExSstr"}], "]"}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{"Print", "[", 
     RowBox[{"\"\<yInLstr=\>\"", ",", "yInLstr"}], "]"}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{"Print", "[", 
     RowBox[{"\"\<yInSstr=\>\"", ",", "yInSstr"}], "]"}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{"Print", "[", 
     RowBox[{"\"\<zstr=\>\"", ",", "zstr"}], "]"}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{"Print", "[", 
     RowBox[{"\"\<xstrEx=\>\"", ",", "xstrEx"}], "]"}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{"Print", "[", 
     RowBox[{"\"\<xstrExS=\>\"", ",", "xstrExS"}], "]"}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{"Print", "[", 
     RowBox[{"\"\<xstrExL=\>\"", ",", "xstrExL"}], "]"}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{"Print", "[", 
     RowBox[{"\"\<xstrInL=\>\"", ",", "xstrInL"}], "]"}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{"Print", "[", 
     RowBox[{"\"\<xstrInS=\>\"", ",", "xstrInS"}], "]"}], ";", 
    "\[IndentingNewLine]", 
    RowBox[{"Print", "[", 
     RowBox[{"\"\<xstrIn=\>\"", ",", "xstrIn"}], "]"}], ";"}], "*)"}], 
  "\[IndentingNewLine]", "\[IndentingNewLine]", 
  RowBox[{"(*", " ", 
   RowBox[{"?", "VerAP"}], "  ", "*)"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]"}], "Input",
 CellChangeTimes->{{3.6527688268400264`*^9, 3.6527688719410715`*^9}, {
   3.6527689238751364`*^9, 3.6527690460738525`*^9}, {3.6527690914713078`*^9, 
   3.6527691021576505`*^9}, 3.652769144341402*^9, 3.652769188319212*^9, {
   3.6527692252143946`*^9, 3.6527692349023046`*^9}, {3.652769848410374*^9, 
   3.652769883745507*^9}, {3.652770013775674*^9, 3.652770014290491*^9}, 
   3.6527702854427814`*^9, {3.6527703413393726`*^9, 3.6527703445998774`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Plot", "[", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"VerAP", "[", 
      RowBox[{"x", ",", "1"}], "]"}], ",", 
     RowBox[{"-", 
      RowBox[{"VerAP", "[", 
       RowBox[{"x", ",", "1"}], "]"}]}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", ",", 
     RowBox[{"-", "126"}], ",", "126"}], "}"}], ",", 
   RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
   RowBox[{"AspectRatio", "\[Rule]", "Automatic"}], ",", 
   RowBox[{"ImageSize", "\[Rule]", "1200"}]}], "]"}]], "Input",
 CellChangeTimes->{
  3.652768699087532*^9, {3.6527698926533923`*^9, 3.652769895867095*^9}, {
   3.6527703116360207`*^9, 3.6527703218855495`*^9}, {3.6530206304744587`*^9, 
   3.6530206387033386`*^9}, {3.653020669541066*^9, 3.653020670014227*^9}}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {Hue[0.67, 0.6, 0.6], LineBox[CompressedData["
1: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
u5pic1MVbsR68gVO0SH1SGAyI1MZ1G5JytTOYPMzTP3qmaUEBQ2v1MV+0aHh
Qn1Xe6oilAiZWlZxOoPc5i9XH3msB5zBHE2IzxlcRisc3TfJQ4XzfR8fYWc4
9KDGlcmSg9or62P5ZJ3hZvXusnQLGdj8/O1ZLwVnSDjzwpTZKA31w2dzH6k6
Q9b+YCWanhRs5bEq4tZyBsuh31bvQyTgldZylfsmZyDLXlqrzxIFJ/uKxvt4
Z7BX25c9ECYIbw6EvPtDcoY4yYP60Qs84JKpPrrDzBkOX3Bnru1covY+GZi9
Z+EM///+Z2ffRc7lrWwPLzuI0xzYHt/yXG/Bje2fb64H2YawLTXtPTSRzXZ7
jOD8p6tsJwtUCnzIY3tZXcTodTHbY161Z8tesF3dIks5Nsa2d0FnlhBpx18X
7bS003/HNkf1TJK0vutfC8q0JZfFu/01kzPBJv2Z+18b9XP2iUkx/toddmm9
cfb8a92iEYpdmtdfo1UjZb/hnezrffare6bo/dcSonzt1hvYVjO539+uzfaW
zLm5YUO2kyxPa/JuY1s4v+Cs41G25fwnXIfa2dZJT/ML7Gbb5BkujNXHtpd0
dDLXF7ZvNAjUav5mW11DVyVMy4c9f3rHpoVNbG+NPURJILAd+K7WOcuc7eJE
h8SqHWzXlrEygMF22+DFGy3ebE8bDVZ92Mf2n90JDf5hbIuf13jz72G2VWpa
Bo8eY/t/76v/+v8ABLwwDw==
     "]]}, 
   {Hue[0.9060679774997897, 0.6, 0.6], LineBox[CompressedData["
1:eJxF2Xk4lN37AHBr9l1I9l3CzBhjxtIcImRpRrahkIhCaEMSKkIqSyRtSgqp
iBDV3OS1REgSQoos5ZWtQuj3vNf1/TXzz1yf63nmzHOW+z73uR5l31Anfw42
NrYpdja2/77xYyFf/8R6A9v/Pin7OW8LRbP8eSqHsfEYyxnzL5tJwSzPscne
C3FnuWJj494POJZJdIXByk9ef238rL0jZCvLpwr2fjae2vXXiuwK5Mb7nqzr
W/xSBu+yPBZdPLBwi+WHP0nxqjksm07teBV3hmWP9/G7THazfOnBl7hSYZYX
v+q8beJj2VPrkPpHLpZV8tdahH57/HVZjrRE0DjL7adtC9SBZULdxV+mtSxn
r72zda5keXeU7/SpEpanDkYbDeewzOfxoCU3nOWagMIc62CWDxzND1jYx3Jb
2hVux10sn7hxqXvZlWXdkov59+gsDz1NOeRsz/KFpgRzdmuWqe/iRB+aszzz
Ofqjh6kHZDs8saUm/GLmzRx7yGPkAd/G7hQXhHAAfS08pgLvAcLnNvGsmvIA
h2CI/Z7NHtDF1tDehheAxxsCNwprekD+nSwC5ZYw7NXc+7VG2QN4bFqJ4v2i
IGno9TRAzgMOPRUaWkLi0GDBSJKU9gDjfzJlGlIl4CjN2a1OzAPKxWMvJ9RL
Qk/Q9h+yPB6w7sDHsZtLUnA2yqqhid0DBDxS8zr+SAP5LMo8ssIAfrt8D8Vl
Gbhym4Rvn2VAEk/Ra/NOWdheimeLnmLAsyCDg7IPN8Ly880dmuMMeOvQ8NDo
jBzs6lMJiR9gwJozhbd9owIoiIoUEZsYcNmqIo/ttBK0y/NHfqpjwMxMpAWu
XwlidbitLzxjwOrBp5Km+sowvO336HgZA+KttPh93ypDfsy40tVrDNCzUvIt
XKcKzuc+f7e+zIBeZetjmTtUgevK4IuFdAaknIpJEb+sCvsq3u5yPMuAxkdc
a7wqaqD1jZnDfogB7LER5pba6tC7WBPwMJgBlaF/Mq0C1SF5XSXJM4ABeZ2J
z03uqsNX5ZLuil0MWLY8dlpbUQMeuOeIBlozQHPtjMsotyYQGsOS2uUYEL5+
JdC/RAtK9kfSeqQZEFJjZnO/Xws0hOJkhsQZYCzQGb2LVxtknS8W/svLAE4G
bo+QrzZwfH7QLPjDHQq2HlpaEt4EXatfee1eu0PjwjspHF0H7G/NdTo1Y9dj
TQgHInSg0XI5x+OlO7wel9UgXdeBmnN82geeusOFhfy0lHEduL1Byza5wB1O
nhXbsjNiM4Qb+ic3xbjDDU76h+IzuvC1N5jeEekOrWHEnqd3dMHvxJEN7w+7
Q4jAI3x4gy64vzxdNLbfHYqj87wGOfQA0W+3cLu6wzJfpE1ztB6Ihnzks9Rz
B7zX26FqL31IER1/Y6ftDhTj6rm6KH3gqpi+slPNHUZoX7rjL+nD4vKq9l5Z
rP0Fmy9aLfownCS3/dQ6dzCo6qzOlMZB6R1GCgy5wcthlxpKBA4iZKQ6dve5
QXfhdc8Lp3GwJbVL4vdbN1j8jm95fhEHbYftrhu2uEFl4Kjjw3s4mLAwKy0u
d4PmCe2EoXc4UPyk1HMpyQ1WJ/cq1ujgYcx5UJZw2g3YHOwUhwzxUNJ8xbsj
xg0oRg/NP1HxYFwqPsl32A3s9MTfJOzEg2ss18rJ3W6Qxykr5BiFB/l5QHLu
brCto0gu/BQeRvfFJDx1coPatKyfR87h4ZDjT+EFazfQX0luVryOhwvyE8r7
CW7wc053bB0TDy7pd/at03UD1yo3umETHuS499zP13QDcnX2N6sOPIxEys8g
FTfg2+4xSH6Ph+KpPuKQnBt8vmXoKPwRD+E+2VHR0tjz2o/6NY7hgdzt9EJG
3A1KYh2t90zj4Y+1CGeloBvQns+GyB0jQGNtq/VOHjeAQOmKSzEEOK+flDrD
7gZpKxe4BRII4Jxv+eb8iisM3zrlG5tKgM8pzz2aZ10hLiKR6nuVAGuMRyFm
A65QSr6cIvqUAP+8Dnrc3+MKM2WJphFAgFRzrV8Rb1yhk2b++0MTAWS1b8U9
bnQF8H5x82YPAUiLGZmaZa6A/vgkiywQICT72FOxRFfAbffmzNAzgE1eKqrN
cZgTHK5XGRrAmHp76sloV6A9Puf+wdQAvJ6o+3wLw9p/mG4gb2cAjt3d6/7x
xFz0IzYlwABw4gbOkXhX8NGMzhTIM4C589+nhwZcAJGTHxSKECEiIVCtxMAF
aKqD4DpJhJ6x2C6uxZ2QZykuNxxEgiOerQ+e3XICUeYE7u6cEQRYmLYRfOmg
1Hf/k5kVBe5pnNKY06LBMGX02s9IY7AzXfRULnaAGV4j+Q0lJjAnYjTbr28H
pTsSToyUmYIU/9CwU5wNzFwuIc4+NoN3a3o2uwetIOxB6tOUS1tgS+8rw9GA
raD0Zdpk2w4qqPe2x2g/RzDTZHpmAxuCagneBGI5AqVjko+2syPYvsM8lVqE
oHPrZeVoDgQHG8tzXbIQ0ETLBvu4EFRV5FTFhyDgTa5+fIEPgW2672yfPILA
BfXud+IIPlyaapFc3QLN1i6S/WoIgqNMcnpiTcEmVDK2dhuCBnz8FYsDplDq
ncHotkYg/7Ux96GzKYgKTe6askHQ7uF0PVHbFCaaiUMb7BDgTPffJr01AS3+
rtYDOxDMr2WXZGuYANyNdBt1Q3D8zBy4vqaAj5KdEykQQZcpub6+igKLmgw6
cT8CnR8xL/VuU0Apuy8KfwDBgD9f47oICqR1bLXWDkawxVqptVKJAtVLJt3C
YQg4+B3fSR0hQ7NxXk1ZBILki0WTPbJGIPMl7b1rIoLKyyUn73EbAdnWbsrw
LILRm48kImdIUFhUQ5BMwtorfWK2oZEEbGVNzu3JCBY669I9w0kQZ809TT6P
wEu8nzLcZAjDgq6R45kICFn8KZNHiJD07BV3cR4C7+tCijXeRMhxsXMPvYUg
tUC0ImU7EWTOLgwY3EYw/kRqSEeJCKLE9hM1+Qiu9agQDrYaQFroitSLuwh4
ZEz655QNQNRfo/pGCdbf3KBNK+14sFnmaPinCoHecl4+uRYPoH1y1L8aQTyj
R+7oPTwkTeo4cT9FoCFjLjIdi8X5Na31FjUIwrOkFj7i8ID+maCUP0OwLq3u
+csMLG+uprAdqcP6w69/W+qBHoR1/UkPfYWAs+XKpYsJepCzRNy9hLnwLNdZ
Xi89qM4dOXqqFZs/rv6gZWHs/sNPLma0IUj6c8ZwKEwXy3d+/sXtCB4v9DcX
EDeD6I97udVdCLg/Jn4nPtOGwGEZ4x39CMSVcpoY6dpQeO31/jbMSnuKbp7c
pw2dV/9tsvmAwHikdUezqDbYiEWKUAew9TsuWurprwWl7XOtykMIer7nhp0S
1oQwjZ0rzE8IRnAlNvdGNKB0oFoC9xmLi/DnSm3VGhA4Usy4iZl/4WPn+r0a
EHfHJDx6BJvfRTV8UZU6TERYdWh/QXCP7dFsh48aKPnn2nhPIKgwh5YFQzWI
s7trW4+5/tSbWxsE1ED0k2eU2iQ2H1wL9L1PVGFi5pXfGGZRPsrjn3yqgKrG
g3y+IYgUe3lIvlwZcg4lmepOI0i3fDj+jl8BCl/zz2nPI0CquVodNfLg0/l4
JQTzDHvi/uYD8lCqxUsvw+zI3P2t5pUcLE6/6DFcQCBoLPT9ZspGWGyOdCX9
QJCoH/xzP/8GbD9a0Fz/C4GhsLvR3hoZyNk19toB8+jU1shdB2SA9vbS8wTM
W4s3Lju+koYwxqbj85jZ1FtXDVKkYGLEMbBxEUG07CbuNT5J6KzQ3bB9GcGm
pfXbfj2VgF7ZbZ4RmPvfs5+d2S8BYQaa4/mYyVl9vCMt4oDT2zawjPmnSLJg
c7IYLJ7jM837jaBg+ohDHUUMej9EtTVhdn7tc6FmUhREl6vuTmMuTyGLPrAV
hbTlm2TjFQTD/J2aahLCUPpJr6sZM7X5XpHUYSFYTJUv+4r5RkKsDt9bQRAN
H+oTWEXgyaavP50hALTRXl57zD0/zpOqxflgZvj5wEvMxHL/6uJDvNDcYcc/
jDkzzMz4ehcPdJY+iv+NmfZtyuxUxjoonV12wK0haB22s7IX54K44OJd6Zg7
5YT99x7lhMLhov33MPe4d5453ssBWnWXm55hHu50bii8wQ7NnOjYF8xjgtKj
THZ26FxdblzE/M2mj/O9HxvwXioIFPiDYCq+NpHfdY1ZXfjqhh7mX0vURrLc
KrO02MqAipnjUAN3wOffzOYdZTI7MEv7vj7z8uASEx307AnGrNJPb5glLjJL
XXMfHse82amHU+n3T6YPvHp/FrOFxcdTJ84uMCP72OTzMDvU7K0vdphnJo2s
o9zH7E6YYO+TmGOKqv0peILZtzjYnKd/hslWP7mXibnf8jN7EPrOhE+Nh5ox
zxC/xTW1TTFlCrK7OjGvU1/4o8r4ynTXYZzuxSy3fvVk3Jdxpla6cMJHzHju
dWsD4V+YMFP5/gvmbT+EYyhrn5mle5yiv2He9UV6JStlmCm6NBw6g3m02Pzn
qO4A073F98kCZpFzOxeub3vPjPv83m4Rs3GQ/5yrdxdzho4MfmNuzZ4eVpx5
xQxTuRa0+t94uIkPpivXMX12fVtYwzy8u9dPxP4BM4xbr+MP5lRzvAt9IJPa
3anw8z9XdnDtxl2qpsb1fhH6z2fueRHuyjRSLV+6zq5g1hs3JhHHO6glkeF5
S5iDMwXkP/V3U2ldhht/YEblSwpa9X3Utqv5e75jXv92XCm0aIjanVFzeALz
0aUDYp7Nn6hKAcfpw5h9+Hwz1kxGqUdqPi/3YN6+gSFx+9EY9Y7SfGgbZqI2
7ZKV6iQ1TfF+KWBWoFivn8z+RpXT539ejpnPdkt2Kv80FT0VySrAfLwkV0CG
OkNd2VBLzsbs9yw9tfbxHDU4mW3kMGaGpZDD+al5qjv/lUkfzI5tSULeGj+o
tG3dtfaYKQOxFzhyf1G1jPVfKv3XX7/fjt1vF6nXFuwXeTGrTR0TuSu0TNUK
5Vv6jq1f4ZWQNNv4FaqMqMfuGsxcZyZpG2tXqfYt3+A65iUBf7F/F9aotEDp
mVjMc0J6tjYVbKh5hFSGMA/Iq7/6psmJcrJDXpRj8WbU2yyh3sWJJAWv4FMw
Z2QE7/Y6wYX8VOoo3phteSpmOju5UfWPVV5uzJUzFtKVUbyI6P7lNhWLf7H7
Yz7fVfnQwImy5/yYg/1TirXa+RDxrX9I9+//4uON2VUVAYQLiT63F/PFlz5+
ca1CCE5x1Ydh+elrDNfDp0eFEUw8O43DvI1c+GtOUQR1ki37p5cQnOyJ+Idg
LIqqT5VZBWAm2jHdCy6IIZvvN9dbY/nxFtExNsVIEl1acsmux/Jvu5iS2r1U
SUTz08sPwrwyPdv88pMk8rlyyVICs3tRlvjqufWoNPyXpReWv4UVBgtCh6XQ
IvsFk5E5bD55gtuckzegsP6I34Xfsf111Cw8fGgD0trZ5miC+V2diNQFA1kk
t8IgtWH7B+5EuXfToCw6I8hXP/kvVj/MLM9RCHLomYJAq8QUll/7kzcoflBA
gRHrbqhi+9WUR4Zu6iZF5KO5sr5wHEHCh1zzpShFdCe7laaD2XP6XcV+QSXE
5TssrDeGxcv3sYGt95XQGZxJidoogn9neXUXJ5RRZz1tX89HLB4JQlUPRVWQ
4C8ePmvMiYfEzP3JKmjgI/FgJbYfK8xvcOk6q4LUoDs2fRBbfwubYko0VJEf
bzCTjO3npT/tX/v4qSHay7oiux5svEh0N+lUNXSEkRxW+A6BTYTLp9flaoic
vXOJE/OnX7t/GHOqIxzuDa3qLVYvLB2UX39bHaW1Z0mJvEFw+HdaSMtHDXQC
Gf/8rx4hsb0TInhqo0tbT76KZiKQfUF4bJqojdJi7zy8+QLBn+g0V+sybRS8
tLaxHqubm3/Z3dzFswn5FSpmcGD1EON7Pe5s+SYkyKj4Go7VUyeGSncOCGxG
E968FvxlCOqepV5JfKaHFTKjOspYPXf3+Fez9HE9JPppq7wUVu+lkG0+XxXX
R6L2mtl8NxE4VXDqlAXqI9MNZgpT17D4cDEbCuHHoWvNqwk3cxCcdqgIzanE
obROl7vMi1h7prcz/hUmoO4HP5+OnkDwslWCLqxGQG1PyWal0Vh+80gQ0acQ
EG24cOfx4wg2RgWmhu3FnNNJ4Y9EkPZEL3G+ioCUpvwmZQ5j+7lebdSSjwFa
rM1unMXqaZpStw93ORF7vtMraTsR/OZcpy/vZoTkfB02x2P1/YKJFV/XASO0
svfCiIAqtn4OnxlJPGmEuOimjCxlLJ5HOHJmCrD7vS/H3lFA8OzlH7aGBSNk
2UivLJfBxuv0UteBDDJauDlQmyWIzS/Hv8eqX1MQOrpo3TFGhRX27hc7LU2R
u2KVTsxxKsAi9e5jhimauEZqyT9GhTPf758XCzVFabuy9jUdooLg4OldHVdM
Ee6HUB53EBXkqw2Wt383Rc3zD3i8PKmw5WCmoUWuGSqskIk4aUKF2H6nEtzM
FrS4u8HoxNIWiO+baFvXjlDS645bu4O3gOdrOWKA/VY04VqszW1pBrmNd1UN
X1ihxcsZkuq/TMDzSnO1pb8NGo5xOWS82xgkf3By64TaIFFRr+ohV2Noo1Hp
YlE2qJpdSyOOZgymvJWTg6k2CJeRHlGz1RgUIvJlIypskM9i0bjgJmMYdj55
oojTFpUKF9/X+kmBfaJEJHzbFs3oTG+mpFJAITg0deG+LUoTC34Sn0CB903F
vf1PbJGM8StG00kK2MQqh99rsUXQcXXBNpwC2tPCt9GsLYozrwzY7EqBqdZJ
zsNoO8p7Kz7lr0iBQ2dvNr0f2o7ATi2/8BEZ0izCZTMnt6PITeF7ft8jw6NV
ixDHhe0oR3KgeHseGZvfMfF/+OyQj9fUwFAaGfx9dL0eE+1Q6TnuR4PhZHCn
1C6kptihwPP7M4gGZDi2kGptk2WHyDqa9Tt0yJD1yCuXM88OFbp7HglQJUOX
Ogc6/gSz4OzuVAky2IvbngsYtkO8JuakknkjoH7rUbYg2SNk+Txma7kReN0t
PLKK7BFva0O6xn0jOLHneFO1nT2K06Aqrss3gur38iH6e+yRT8SWOzUZRtCT
8Z35NcgeLSZfzb2YYgQ/HOrE7x6zR7T7G3n3nDICQoNftVyqPWrejN+2FG4E
tFiSQG+2PcLlX10P+40g1JjXK/OWPXJ3fss4vccILvzoK3UssUcVV92vj/SS
oKT0Pid/lT0qlnFOTeokwaugGNd/6uxR/y0xglQzCSY1dhTFtdmjj415R1KZ
JNC4Puf465M96pCy2kd4SAJL94Zbj6fs0XD+to97CkiwVyJ7IeSXPTpTOJ0U
dY0EecmU3FFBBxSZvLrik0KCDcfivrwxckC84k+JQv4kENwhfKLkvANC45VX
metJkDPUOFB22QE5Wr02lhQkgdrBWLOqWw5IWMXQw4mDBCbnZ9bqnjigvsrs
WynThnCgtSv+/aADms31mxr/xxA7t18+y6HniNbl8SaTwwzB+f2OCR6yI2o0
tmWT8sfOrft4bYUsHNHtnle9/QxD+JUQxS/j6oh21GwWk91qCBoNnud1Tzqi
a35DhAOShnAGKWW6tzuiR+RPR3UeY+fWzt753b2OKJ+zxyCogAjXvNOd9352
RMRp/dSLOUQoP8khdfCnI6oO22OWcJIIn5+N5pxW2IHyynsbFGyJgChFNx4e
3IEK+4ske3sNYE1mg8spHhp6sLuWmTZMgHbBxOEgQRrS4hufMeskwE22+SAX
MRoSv+vn3MwkAJpoO6W1kYbiNbzR4RsEOF0VV9quR0OUQzPS0h4E4HWdENjo
SkP1FvLhxq/w0GfrcpnLk4ZKWpJKUqrwUGxWrzLtTUPDxpEmZXfwYKd+jVK3
n4Yu5X0xij2JhwsLOwICYmhoeZ+Eggh2bpbIrKovv4M9Tz6aP5KCg9FENcfr
RTTEqZC+8PkIDiqOp/clPqShX77RP+S8ceDqGzTDqKahSMGAB7MEHOTgFRXY
2miovUmEQ6BUHxQ6E6Ps52nI8urGrfO6ejD9cp6LtEhD6FEpW9BvXWBW+aQp
rtKQ0uA7TUazLvjcNL43t46ONG8JHz3vowv5B6e7c2TpKI9K5mdP2QxaQq64
L+Z0pNTpa7j8fBOU4ISpFGs6qnzetl3yxCbAOTc6nLfHfp9sEr+VsgmMrpKC
DN0wP+nPaijVhm3a0ncTgunoiq+/Q1imFryy76joC6ejxae0dGdbLXAIO/tS
N4KOprL0ybxrmuBc9Wv4XTwdxdsUJD3aqwl7rXo3alymo9M+HhHnFDRgLDBt
0/FrdGRdPrXxRIs6HEi1obTfoqPnguYNjYfU4dDbatdjJXREM3KXlAbsnL3n
SnpjHR2pW3IF/muhClwJ9DzZJjqazcr4+GdQBZIK+R4dbKOj/O4Zn6RjKnDx
e1Sb1Hs6ujt2Ndn6pjLciPHgCZiio5SjAUmMDEVQuSUuVTuL9c8g5atHpgIU
NLxSE/lFRw0X67vaU+ShRMDEoordCcls+XL1kftGwOnP0wR4nJDzaIWD22ZZ
qHC67+0t6IQOP6hxYc7IQO2VjTE80k7oZvWesjRzKdjy/O05TzknFH/2hQmz
URLqh8/lPlJ2QpkHghRouhKwjcuyiFPTCVkM/bZ8HywGrzRXqtw2OyGydNZ6
vRlhcLSraLyPd0J2KvuzB0L54c3B4Hd/SE4oVvyQXtQiFzhnqI3uNHVCRy66
Mdd3LjN7nwzM3TN3Qv///mdX3yX2lW0sD6/Yi9LsWR7f+lx30ZXln2+uB9oE
sywx7TU0kc1yezT/wqerLCfxVfJ9yGN5RU3I8HUxy2OetefKXrBc3SJNOT7G
sldBZ6YAaedfF+2ysNV7xzJb9WyipJ7LX/NLtSWVxbn+NZM93jrtmdtfG/az
94lIMP7aDe3WfOPk8dc6RSMU21TPv4Y1Q0Xf4V2s//vsW/dM3uuvxYR52q1U
WVYxvt/frsXy1oz5+WEDlhMtzmhwb2dZML/gnMMxlmX8JlyG2lnWTkv1Dehm
2fgZLnSmj2VPyagkji8s32jgq9X4zbKauo5SqKY3q//0js2Lm1neFnOYEk9g
OeBdrVOmGcvFCfYJVTtZri2bSUcMltsGL91o8WJ52nCw6sN+lv/siW/wC2VZ
9IL6m3+PsKxU0zJ47DjL/3tf/df/B8JB/48=
     "]]}},
  Axes->True,
  AxesLabel->{None, None},
  AxesOrigin->{0, 0},
  ImageSize->1200,
  Method->{},
  PlotRange->{All, All},
  PlotRangeClipping->True,
  PlotRangePadding->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{
  3.652768750288373*^9, 3.652769397521917*^9, 3.6527698963195095`*^9, {
   3.652770315629749*^9, 3.652770322759177*^9}, 3.65277797290921*^9, 
   3.652778899017292*^9, {3.6530206499049015`*^9, 3.6530206705799627`*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"VerAP", "[", 
  RowBox[{"200", ",", "1"}], "]"}]], "Input",
 CellChangeTimes->{{3.6530210313817115`*^9, 3.6530210663924265`*^9}, {
  3.653021101623953*^9, 3.6530212633970118`*^9}, {3.6530216182457776`*^9, 
  3.6530216198067913`*^9}}],

Cell[BoxData["0"], "Output",
 CellChangeTimes->{{3.653021223071726*^9, 3.6530212642987394`*^9}, 
   3.653021621077617*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"sol", "=", 
  RowBox[{"FindRoot", "[", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"VerAP", "[", 
       RowBox[{"x", ",", "1"}], "]"}], "\[Equal]", 
      RowBox[{
       RowBox[{"Sin", "[", 
        RowBox[{"\[Pi]", "*", 
         RowBox[{"5", "/", "180"}]}], "]"}], "*", "x"}]}], "&&", " ", 
     RowBox[{"y", "\[Equal]", 
      RowBox[{
       RowBox[{"Sin", "[", 
        RowBox[{"\[Pi]", "*", 
         RowBox[{"5", "/", "180"}]}], "]"}], "*", "x"}]}]}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"x", ",", "0"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"y", ",", "0"}], "}"}]}], "}"}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.653021289126317*^9, 3.6530213413684316`*^9}, 
   3.653021401657976*^9, {3.653021458757043*^9, 3.653021481156728*^9}, {
   3.6530225512983503`*^9, 3.653022600762081*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"x", "\[Rule]", "72.17859990515358`"}], ",", 
   RowBox[{"y", "\[Rule]", "6.290779485219709`"}]}], "}"}]], "Output",
 CellChangeTimes->{3.653021342991542*^9, 3.6530214049229784`*^9, 
  3.653021482477586*^9, 3.6530225877258267`*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"Table", "["}]], "Input",
 CellChangeTimes->{{3.653021522363495*^9, 3.653021524775061*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[TextData[StyleBox["Another version of sp.int - it does not work", \
"Subsubtitle",
 FontSize->24]], "Subtitle",
 CellChangeTimes->{{3.5140155335079975`*^9, 3.5140155491017475`*^9}, {
  3.63637330054379*^9, 3.636373302431426*^9}, {3.6363743964528675`*^9, 
  3.636374399557327*^9}, {3.6527678392019377`*^9, 3.652767861089439*^9}, {
  3.6527679697469215`*^9, 3.652767990729594*^9}, {3.652768071296999*^9, 
  3.6527680742142925`*^9}, {3.6527789219500265`*^9, 3.652778936895306*^9}},
 Background->RGBColor[1, 1, 0]],

Cell[BoxData[
 GraphicsBox[
  TagBox[RasterBox[CompressedData["
1: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
Nd2Pk0jyqAkBV3cZzTkO76jUalnYXebpeC+i2i8XPc5ftf6upvciOlGPSnbU
vvci1jaFUJC9dBtXw3Jty3iDkNTeyUDRo3Awvx2Qtw8qA0BW1n2RH0kG0giI
L03dkQ2MA0RdkJzabJHNcpPQOBvV9kIz2Vk7mNop14B0LcM1OVxyX3Jj2S8S
rzBbN7bY5wg5EqGy/lbIG6h4dfDtjqgdFXvtnjfwiIt5q6BiGOVUuDWoKBWK
DdqzNS5WTTNEWNPGdTrIwhyBc47Da50brSRRU7FbduC1qHNmIOA8h0KCgjGJ
SRqcO/pi0CCnMGM1mcq+4mW4zv3DdQkKT4gqFKeg7TideYPjsyLQ1scw1qkR
IToBolRokJuP1JxYdd/+kDXhnY6zMEfgnLF4nhnryV+RNaNlBF6OmnkDBEHB
6OKTBud2vtiUeYNY9Z0LMlwPCNel5XjGqC7nNGo7zv+mUqlUKpVKpVKpVCqV
SjEK/J1ClHbJvaxVRikla8kMyecNQISDh0Ni1C7A+bwBgqBgnHqSL5fyeQME
YYJhUp3AYC+B411KzliNeL9BlHaJ4VpllFKyMm8wVOCcOHg4JEbtApx5AwRB
wTj1JF8uZd4AQZhgmFQnMNhL4HiXkjNW4XmDwB9rm39eSrxSt6gX9iWtcR87
JIA11XDaYqb9fPx8L2S9sC9pjfvoweNqan7OI0B1zxDPsYyZNxjxKomO1/2p
PPXv5VVTHrw5SFusVHftAmx/D8OpvZLa3wvXdV+nsjwrG8nQ9xtkJ0yb7FcG
Ds1/Tdy1Eb4+X1KdqnsfdFwY19jTMSH7qLgeBeBWvKipFTtn+t7Zq04VIWKD
wCZr9Gh6FuS7RocxaskCH+5LsXmD4jhyWrPnDeqPZKW67xmdNyhMddcI2mKm
FXfW16230Eaoj80bFKbUGgshlPpmiPNYBswbxK5Ol7pf98fxWC7YimYevGlI
c949FWhtKPDMGShc9p/m4yL2EjHkYHTestUMyJemv6jpysChaRcV8nDESnZK
ngyBx4VljbX0K6vjrMQdAsY4GFH9U2vEnGkNV7FN1tQD2kELfnk/czQxF2fh
cqhD4XmYQRqXN/ArMG9g3LfYvcmUat+SE7DUFAJfWF6y5A2M+xa7N5lS7ct9
GfHQFLK2z+/0eXmD4uRI8pAXb5Y7vj68mUgLV6q+4V4CPO5Y40ZwZt6AtD8z
b3DvMfMGnJY8bzDtWldg4GoGHRfyGiv3K8vzvIHAwPHYOQHTj+eAlURFyrzB
XepoOheHfN7gpXDOqLxBYPrFkzd4bRxdv1Mg/+1TU96g/mjpGnxheYl7tKD7
dwrkv362Ds7H5w1W3XM9LG/A3aaR+Xb5pMk1a8WbjBTyoHtNWGPUDfpOSd0P
6kxGdeYNCmZnL60MniNxRN6g+wIm8wbd8gffIjVvUPc+9Lio10xyleiLScjv
FOwYdrxxT7bPX0nUqUIiNaGCX95n3uClqCUrPJ7FtIxaXZ/xOwU1RWCvv6cd
5H2NbMU2d+ZvJb8EvrC8ZHkbQNPvFLiNPjZ129IeViF/EJnZaZSFQrGr0yVP
3qD4lmvDfbR40Zo3GIfkv8CuP5Jf1Q36hrv72pv8OA61I29g2e7rxQhgqVc1
6K+EfVSZN7CIuy09zfOwWyC/U+C6k3tRv/VTWQ4B4UwxDoyU/4C9yxmujuXU
SAt+eT8nbzDtXtIiYQXza3Q8wzm3zht0twHJGwhdPCZv0N1mSd7A+PzDs/MG
k0/E4RYKLc8bkGecOw/Xpr7lFEzZ8SYj+Z83qLuuMcgGfcPted5gJmrmDfpI
ZMdbqTJv0C3LcPiFkzfoW8+bYpJ5gyZ5XlJxdi2nRlrwy/s3zBuQilqvMm8w
bazJforKjryBuq9FlryB3OOD8wae9yJa7Hewcb96aH0mAUr+P4hM6zTWQqFB
16XdlxzqTSX3Ua1vxZuDFHXjCZ43kEnUBm+SNwg5GIe+3yDzBtP0VnmDpnvJ
7piEvN/AGIeFeYOoOdP9XsS6xngOzbzBXZk3eOk98wbnLXfqN+V83uCwvd+g
aBabN7h3wdXUDORenMAXlpeEnIDl/Qb1/wPRaN+OJ/9fF+s2If3OkfNn2n2H
M2De4AxdnS55rhs5HvUek2zWjTcHyXOXd0eqp2WxQV5yzJnDS1CdeYMa29OL
EcDYqayQn5YXDAtXPJPsVwYOLckbnGPW50uqU32ToWP9r5eF66tiw8jgpzpb
DgoOexAYqdg505o3IBd2bkA9owl+eT9nNP0LQuYNuIO3T+F5g0DZrnifX/xR
WqviNvyRZXWMJS2ZIZh5gxEC58TBG/eE6iCNezI/VnOGGGciXYJCgoJx6km+
XBrkFGasMKlOVDBMqhMY7CVwvEvJGavd8wapjFJKVuYNhgqcEwcv8waDlHkD
BEHBOPUkXy5l3gBBmGCYVCcw2EvgeJeSM1b3vMGXVCqVSqVSqVQqlUqlUilK
+bzBpsoopWQtmSH+TneZ2OCcOHg4JEbtAjyHEzAaUEhQME49yZdLg5zCjBUm
1YkKhkl1AoO9BI53KTljdXH+D+oUni8=
    "], {{0, 40}, {1384, 0}}, {0, 255},
    ColorFunction->RGBColor],
   BoxForm`ImageTag["Byte", ColorSpace -> "RGB", Interleaving -> True],
   Selectable->False],
  BaseStyle->"ImageGraphics",
  ImageSize->{1479.1, Automatic},
  ImageSizeRaw->{1384, 40},
  PlotRange->{{0, 1384}, {0, 40}}]], "Text",
 CellChangeTimes->{{3.6527784874293003`*^9, 3.6527785143869643`*^9}}],

Cell[BoxData[{
 RowBox[{
  RowBox[{"Hor", "=", 
   RowBox[{"73", "+", "105"}]}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"RExLarge", " ", "=", " ", "159.7"}], ";"}], 
  "                           ", 
  RowBox[{"(*", "  ", 
   RowBox[{"[", "mm", "]"}], "   ", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"RExSmall", " ", "=", " ", "24.5"}], ";"}], 
  "                           ", 
  RowBox[{"(*", "  ", 
   RowBox[{"[", "mm", "]"}], "   ", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"HorExt", "     ", "=", " ", "73"}], ";"}], "                    ", 
  RowBox[{"(*", "  ", 
   RowBox[{"[", "mm", "]"}], "   ", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"RInLarge", " ", "=", " ", "281.3"}], ";"}], 
  "                           ", 
  RowBox[{"(*", "  ", 
   RowBox[{"[", "mm", "]"}], "   ", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"RInSmall", " ", "=", " ", "19"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"HorInt", " ", "=", " ", "105"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"Ver", "           ", "=", 
    RowBox[{"68", "/", "2."}]}], ";"}], "                   ", 
  RowBox[{"(*", "  ", 
   RowBox[{"[", "mm", "]"}], "   ", "*)"}]}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{"TILT", "=", "0"}], ";"}], "\[IndentingNewLine]", 
 RowBox[{
  RowBox[{
   RowBox[{"offset", " ", "=", " ", 
    RowBox[{"-", "16"}]}], ";"}], 
  "\[IndentingNewLine]"}], "\[IndentingNewLine]"}], "Input",
 CellChangeTimes->{{3.5140155581329975`*^9, 3.5140155675392475`*^9}, {
  3.5140156791017475`*^9, 3.5140158121329975`*^9}, {3.5140161263361225`*^9, 
  3.5140161332111225`*^9}, {3.6327248232768373`*^9, 3.632724829986971*^9}, {
  3.632725632615118*^9, 3.6327256330851274`*^9}, {3.652778068914687*^9, 
  3.6527781581495466`*^9}, {3.6527782392253456`*^9, 3.6527783606908383`*^9}, {
  3.6527784433734884`*^9, 3.6527784456979628`*^9}, {3.6527785173510594`*^9, 
  3.652778519613132*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Show", "[", "\[IndentingNewLine]", 
  RowBox[{"ParametricPlot", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"PStype", "[", 
       RowBox[{
       "x", ",", "HorExt", ",", "HorInt", ",", "Ver", ",", "offset", ",", 
        "RExLarge", ",", "RExSmall", ",", "RInLarge", ",", "RInSmall", ",", 
        "TILT"}], "]"}], ",", 
      RowBox[{"-", 
       RowBox[{"PStype", "[", 
        RowBox[{"x", ",", "HorExt", ",", "HorInt", ",", "Ver", ",", 
         RowBox[{"-", "offset"}], ",", "RExLarge", ",", "RExSmall", ",", 
         "RInLarge", ",", "RInSmall", ",", "TILT"}], "]"}]}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"x", ",", 
      RowBox[{"-", "80"}], ",", "80"}], "}"}], ",", 
    RowBox[{"PlotRange", "\[Rule]", 
     RowBox[{"{", 
      RowBox[{
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "90"}], ",", "90"}], "}"}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "80"}], ",", "80"}], "}"}]}], "}"}]}], ",", 
    RowBox[{"PlotPoints", "\[Rule]", "800"}], ",", 
    RowBox[{"PlotStyle", "\[Rule]", 
     RowBox[{"{", 
      RowBox[{"Red", ",", "Red"}], "}"}]}], ",", 
    RowBox[{"AspectRatio", "\[Rule]", "Automatic"}]}], "]"}], 
  "\[IndentingNewLine]", "]"}]], "Input",
 CellChangeTimes->{{3.5140142601486225`*^9, 3.5140142928517475`*^9}, {
   3.5140145856954975`*^9, 3.5140146418986225`*^9}, {3.5140147387579975`*^9, 
   3.5140147736017475`*^9}, {3.5140148091329975`*^9, 
   3.5140148804142475`*^9}, {3.5140152899298725`*^9, 
   3.5140152905704975`*^9}, {3.5140154026954975`*^9, 
   3.5140155006798725`*^9}, {3.5140156113048725`*^9, 
   3.5140156413517475`*^9}, {3.5140158165236225`*^9, 
   3.5140158244767475`*^9}, {3.5140161430861225`*^9, 
   3.5140162373986225`*^9}, {3.632724662077608*^9, 3.632724664597658*^9}, {
   3.632724703910446*^9, 3.6327247069705076`*^9}, {3.6327248805319853`*^9, 
   3.632724922068825*^9}, {3.632724968771761*^9, 3.632724968951764*^9}, {
   3.6327250046864824`*^9, 3.632725026878928*^9}, {3.6527782079931445`*^9, 
   3.6527782094907923`*^9}, {3.6527783755425143`*^9, 3.6527784699879417`*^9}, 
   3.6527785892381635`*^9}],

Cell[BoxData[
 GraphicsBox[{{}, {}, 
   {RGBColor[1, 0, 0], LineBox[CompressedData["
1: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
     "]]}, 
   {RGBColor[1, 0, 0], LineBox[CompressedData["
1:eJxN3HdYzt8fMPAQ0pKGhkp77z3ucdq77u6KIkqRIiQakkQoEg2pSEuTSpmR
9DaapKGtrSWlKe2ec3+f63n8/HN7Xefz+Zxz3me+L9dF2O0U9chGOjq60/R0
dLTf//vHHv2/vxkq5Bd/Xbf7/77u7Oj+4H/M/rqoUud/LOZ7KMpv7Z/NBj/w
/Vr559jqq+qti/8sHsN0PH/2nxuP/jhqM/zP/TPCvC0d//zCjXQmqe6f2Xgk
Xezhn+sv+a9PP/tnLuVY5WvZ/7y7IpLZKemfo1jG77NG/fPl+zxlby7+c2f3
41izM//8l15gB/fRf75/ep/wd6d/zohdG7pk9c9KiycJu9E/hxmW6S6r/LO2
oe/ka4l/9r8+q3aK95+5w74rbGX5Z/KH22/i16n/37LDwpNuM/98/h1fO/vw
P1O7eqmv2//5ZiHTZf0v/xx5hGsfI/zzDrdfH6uf/vMSu9SAV/Y/H9umHLsh
6Z9TB7l/tUX+s+bZIwvRF/95j9nFBOT7zx1N62NNR/5ZSO/gyEOnf56ci/A7
bvnP0Tpxgjr/Y6XQB1UM/2Nfpqe82Rb/PC/8vazP/J9XrOW37DH7Z4a8xrvI
+J/zfn8nb/8fm6sNj3Yb/U98ypd0zv+PWVtFe18Y/jPnJn9JWYN/fmEa2rCo
/z/9v3XjXPX/OIE39fOR/zGfUvWpNL1/LvVr4jn1P3Yu7XpP/B+nGE9zfEf/
TL65/Dbvf9zXuNkj8H8cys223eR/LHyAr4Trf9z+7bhuHxl7/YKPgktj+S3z
snePsG8WeoZs8+sqN3rPqu+H7cOU/ixMYqB8RdO1goztbpgmynlgqPxZYbEp
IzZbsPcSs+Ro+THxTV+aSVS0a2NT1v3ssXLhZHubVOyvrnPqLJPj5e3s2U1e
2H9YOGxuMk+W377+10ENO+MqVbwgbKrcmM6sY41IRZEuA3ef+E6XP5/41RuH
rRWVHt8gP1t+/DDR/SA2qXS1e25ltlzk+61hKezQTy4t6x/nyqOrlSfKCFRE
n/qNTZI4X25CDvOJwG4M47l6f2q+fO1F8ywV+77Eq/gXKX/LvR8GLI3oUtFx
saqehPGFcpOQsq3s2GdGVmdPOy6Xr82xRnbpUNFcs+yB2bHl8ufHXVlzsEt2
Z80HB62Uizht4iJgM8VvfGcfs1q+pmom4qFNRc98n9Ssp6+Xv3h0L0sJ21FD
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
qQUrtlTjVl4hEgj2fktQfCyHfEbTeQ9LkeCgWTpTNVkOCWnzx+9RJsHHjgOV
Dq2yqI/h5RinDgn0WChii2dk0dSDTQmq+iRY9M5ks90mi1wDAn3+mpPg8ymF
tHdZMmjq3sNyfjsSvE/M8Rc2lEFCqvMSbPtJMDNx+btWpzTqi70fle1OAsJw
3I8jAdKIsps5Ku04CYBxa5AJszQSErB5r3uWBF4OXnsFH0ohV1uPQ5nBJJA1
2NDOqCeF0PLvGt8rJJA6sDz8uFUSuYp3yPfdJAGJTzbJ7YwkovtzI+D5HRLc
2lTWUbdVEoFB05T4AxJs4iAdUkiRQA1XhJ4eySJBTMVcZKauBBK65HSDtYAE
+zJZjOobxFHassBe6gvcPgnn9O0nxBHbnZ+OdGUk0P+aZGjEJI5Cs//2hHwi
QViGtr9iuhhqmOCXv/uFBN282y0USWIoreltI28zCXzLjAt/NIkiSuNOP7Uu
3P7wE45RXqLIdVPmlOAgCVZna7Ist4qi0NxHUwG/SMAYFXEJkkVwvur46sgs
CZRqgunMtUVQkfWq4MclPL6yrpXVbcI4f2xOmNlAhvXXWXwrJ4SRz5uKgufb
yPDglxC7EZMwojRwhI2ykcHfbC1BP00IFaleVCjgIYOn+Y73DgRs6TsvB3eT
YXVAwu3t891oKm2z1KQEGdKuTx7U6BNEUy4OhhEKZPDzF834ziuI6FotDtxV
JwOU7to4pi+A2I59dFQmksHOamZy4BQ/KjpbHpNiSAYecTWxrY93Ibg0NHvZ
Apc76PjdaeFDfY8eb5ih4vc/P2a2YuXD+aSjfYcTbt+tZeUpc158nm7ij3cl
Q3re9rMr/jxI6WSvR8dRMqwx3l5RLeZGPmV5HIknydD4qSm9uXMn6uuKudDt
R4bx2rlmF4adKO2ea/F8MBl0uC9b7zTkQkV/HvncDMP9K/02qH6KE4WyrJZk
3yDDTHb0+9BcDtTHTZdDiiHDgbEdpWqN7KiPP3qPUyIZdgSd1v+2ugP5fDbP
M00lw18bAtsDrR2Iojzw5VUWGaghn5fq3diQ0ibV4Jx8MrwbitzrrLEdgeUJ
bp5nZPA6SmyZKGRBbNy/I11e4/FJCrhpu4UZ9XkVHRYHMiw6RjQwBTGivikZ
o5OVZOipFrZO/MKAQkcyPqnWkcGhMWBkUWIrwhdr3/pvZFDyyGR5+mAzvu+Q
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
     "]]}},
  Axes->True,
  AxesOrigin->{0, 0},
  ImageSize->{897., Automatic},
  Method->{},
  PlotRange->{{-90, 90}, {-80, 80}},
  PlotRangeClipping->True,
  PlotRangePadding->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{3.6527785578499575`*^9, 3.652778595400361*^9, 
  3.6527788990640936`*^9, 3.6527789829323816`*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"a", "=", "3"}], ";"}]], "Input",
 CellChangeTimes->{{3.653021744508834*^9, 3.6530217653125777`*^9}}],

Cell[CellGroupData[{

Cell[BoxData["a"], "Input",
 CellChangeTimes->{3.6530217512700505`*^9}],

Cell[BoxData["3"], "Output",
 CellChangeTimes->{{3.653021752150209*^9, 3.6530217743742085`*^9}}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"b", "=", "5"}], ";"}]], "Input",
 CellChangeTimes->{{3.6530217794751263`*^9, 3.6530217817855425`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"a", "+", "b"}]], "Input",
 CellChangeTimes->{{3.6530217854261975`*^9, 3.6530217865163937`*^9}}],

Cell[BoxData["8"], "Output",
 CellChangeTimes->{3.653021787446561*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Sin", "[", 
  RowBox[{"45", "*", 
   RowBox[{"\[Pi]", "/", "180."}]}], "]"}]], "Input",
 CellChangeTimes->{{3.653021799398712*^9, 3.6530218148814983`*^9}}],

Cell[BoxData["0.7071067811865475`"], "Output",
 CellChangeTimes->{3.653021815471605*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  SqrtBox["2."], "/", "2"}]], "Input",
 CellChangeTimes->{{3.6530218230329657`*^9, 3.6530218571991143`*^9}}],

Cell[BoxData["0.7071067811865476`"], "Output",
 CellChangeTimes->{{3.6530218236930847`*^9, 3.6530218576391935`*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Solve", "[", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"a", "*", "x"}], "+", "b"}], "\[Equal]", " ", "6"}], ",", "x"}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.65302184861757*^9, 3.6530218944958267`*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"{", 
   RowBox[{"x", "\[Rule]", 
    FractionBox[
     RowBox[{"6", "-", "b"}], "a"]}], "}"}], "}"}]], "Output",
 CellChangeTimes->{3.6530218971183357`*^9, 3.653022433229704*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"Clear", "[", 
  RowBox[{"a", ",", "b"}], "]"}]], "Input",
 CellChangeTimes->{{3.653022401694476*^9, 3.65302241716348*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Solve", "[", 
  RowBox[{
   RowBox[{
    RowBox[{
     RowBox[{"a", "*", 
      SuperscriptBox["x", "2"]}], "+", 
     RowBox[{"b", "*", "x"}], "+", "c"}], "\[Equal]", " ", "0"}], ",", "x"}], 
  "]"}]], "Input",
 CellChangeTimes->{{3.653022457381291*^9, 3.653022500732089*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"x", "\[Rule]", 
     FractionBox[
      RowBox[{
       RowBox[{"-", "b"}], "-", 
       SqrtBox[
        RowBox[{
         SuperscriptBox["b", "2"], "-", 
         RowBox[{"4", " ", "a", " ", "c"}]}]]}], 
      RowBox[{"2", " ", "a"}]]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"x", "\[Rule]", 
     FractionBox[
      RowBox[{
       RowBox[{"-", "b"}], "+", 
       SqrtBox[
        RowBox[{
         SuperscriptBox["b", "2"], "-", 
         RowBox[{"4", " ", "a", " ", "c"}]}]]}], 
      RowBox[{"2", " ", "a"}]]}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{{3.65302249066726*^9, 3.6530225014324255`*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"sol", "=", 
  RowBox[{"FindRoot", "[", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"VerAP", "[", 
       RowBox[{"x", ",", "1"}], "]"}], "\[Equal]", 
      RowBox[{
       RowBox[{"Sin", "[", 
        RowBox[{"\[Pi]", "*", 
         RowBox[{"5", "/", "180"}]}], "]"}], "*", "x"}]}], "&&", " ", 
     RowBox[{"y", "\[Equal]", 
      RowBox[{
       RowBox[{"Sin", "[", 
        RowBox[{"\[Pi]", "*", 
         RowBox[{"5", "/", "180"}]}], "]"}], "*", "x"}]}]}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"x", ",", "0"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"y", ",", "0"}], "}"}]}], "}"}]}], "]"}]}]], "Input"],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"x", "\[Rule]", "72.17859990515358`"}], ",", 
   RowBox[{"y", "\[Rule]", "6.290779485219709`"}]}], "}"}]], "Output",
 CellChangeTimes->{3.6530226097563963`*^9, 3.6530238304097085`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData["sol"], "Input",
 CellChangeTimes->{{3.653022612167553*^9, 3.653022612527726*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"x", "\[Rule]", "72.17859990515358`"}], ",", 
   RowBox[{"y", "\[Rule]", "6.290779485219709`"}]}], "}"}]], "Output",
 CellChangeTimes->{3.653022613768321*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"x", "/.", "sol"}]], "Input",
 CellChangeTimes->{{3.653022627699006*^9, 3.653022630410307*^9}}],

Cell[BoxData["72.17859990515358`"], "Output",
 CellChangeTimes->{3.653022632871488*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"y", "/.", "sol"}]], "Input",
 CellChangeTimes->{{3.6530226412054863`*^9, 3.6530226441468973`*^9}}],

Cell[BoxData["6.290779485219709`"], "Output",
 CellChangeTimes->{3.6530226447571907`*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData["x"], "Input",
 CellChangeTimes->{3.6530228811579456`*^9}],

Cell[BoxData["x"], "Output",
 CellChangeTimes->{3.653022881598034*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData["y"], "Input",
 CellChangeTimes->{3.6530228831783495`*^9}],

Cell[BoxData["y"], "Output",
 CellChangeTimes->{3.653022883288372*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"table", "=", 
  RowBox[{"Table", "[", 
   RowBox[{
    RowBox[{
     RowBox[{"{", 
      RowBox[{"x", ",", "y"}], "}"}], "/.", 
     RowBox[{"FindRoot", "[", 
      RowBox[{
       RowBox[{
        RowBox[{
         RowBox[{"VerAP", "[", 
          RowBox[{"x", ",", "1"}], "]"}], "\[Equal]", 
         RowBox[{
          RowBox[{"Tan", "[", 
           RowBox[{"angle", " ", "Degree"}], "]"}], "*", "x"}]}], "&&", " ", 
        RowBox[{"y", "\[Equal]", 
         RowBox[{"VerAP", "[", 
          RowBox[{"x", ",", "1"}], "]"}]}]}], ",", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"{", 
          RowBox[{"x", ",", "1"}], "}"}], ",", 
         RowBox[{"{", 
          RowBox[{"y", ",", "1"}], "}"}]}], "}"}]}], "]"}]}], ",", 
    RowBox[{"{", 
     RowBox[{"angle", ",", "5.001", ",", "175.001", ",", "5."}], "}"}]}], 
   "]"}]}]], "Input",
 CellChangeTimes->{{3.653022697502496*^9, 3.6530227018345747`*^9}, 
   3.653022733252371*^9, {3.653022797937305*^9, 3.653022843406397*^9}, {
   3.6530240384801693`*^9, 3.65302404002625*^9}, {3.6530244234593306`*^9, 
   3.653024426089278*^9}, {3.65302450829226*^9, 3.6530245327967653`*^9}, {
   3.653024628988862*^9, 3.6530246547354064`*^9}, {3.6530247621035604`*^9, 
   3.653024762333565*^9}, {3.6530248414244385`*^9, 3.653024863825362*^9}, {
   3.6530249330523396`*^9, 3.6530249450488462`*^9}, {3.6530255841481113`*^9, 
   3.6530255856061473`*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"72.17201778710373`", ",", "6.315502663054262`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"69.69433542965231`", ",", "12.290245957481417`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"65.57314917117722`", ",", "17.571499007732125`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"59.76810786306821`", ",", "21.75499356897768`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"53.284989329435156`", ",", "24.84833081825245`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"46.76339905326575`", ",", "26.999949276301397`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"40.93551217105428`", ",", "28.66441896788739`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"35.701574339040285`", ",", "29.958239710315315`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"30.967659012588182`", ",", "30.968740006678`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"26.649505202584844`", ",", "31.760769312414467`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"22.673466873094174`", ",", "32.38226940411344`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"18.975935572803884`", ",", "32.86860934351664`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"15.502076865802174`", ",", "33.24582603153428`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"12.204346102048484`", ",", "33.532986332045596`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"9.04101350485003`", ",", "33.74387750805961`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"5.974793182445534`", ",", "33.88819457098638`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"2.971598099980275`", ",", "33.97235078350976`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "0.0005934119457313233`"}], ",", "33.9999999993741`"}], 
    "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "2.973836935089999`"}], ",", "33.984280211112214`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "5.984502082779737`"}], ",", "33.93633430768013`"}], "}"}], 
   ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "9.071700676415938`"}], ",", "33.853684391361874`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "12.278080696249921`"}], ",", "33.73191764355944`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "15.651962686544175`"}], ",", "33.564212857492805`"}], 
    "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "19.249962345677794`"}], ",", "33.34056896623118`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "23.140336377968637`"}], ",", "33.04659768278707`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "27.40735225903813`"}], ",", "32.6616528065031`"}], "}"}], 
   ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "32.157047922741036`"}], ",", "32.15592544960383`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "37.52477187824719`"}], ",", "31.485906199516307`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "43.68476284719025`"}], ",", "30.58726400284116`"}], "}"}], 
   ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "50.86146543698811`"}], ",", "29.36369717330473`"}], "}"}], 
   ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "59.340703539287524`"}], ",", "27.669763616770055`"}], 
    "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "69.4752430832869`"}], ",", "25.2855473030773`"}], "}"}], 
   ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "81.67264988776051`"}], ",", "21.882592788447795`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "94.97735419482147`"}], ",", "16.745360899685654`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "102.74029138285526`"}], ",", "8.986803904453573`"}], 
    "}"}]}], "}"}]], "Output",
 CellChangeTimes->{
  3.653022846877091*^9, 3.6530240407162848`*^9, 3.6530244276712475`*^9, 
   3.6530245336887856`*^9, {3.653024630328889*^9, 3.653024655815428*^9}, 
   3.6530247629335775`*^9, {3.653024847771693*^9, 3.6530248646763973`*^9}, {
   3.65302493770353*^9, 3.653024946183893*^9}, 3.653025586205162*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"table", "[", 
  RowBox[{"[", 
   RowBox[{"3", ",", "1"}], "]"}], "]"}]], "Input",
 CellChangeTimes->{{3.6530255930463676`*^9, 3.653025599678516*^9}}],

Cell[BoxData["65.57314917117722`"], "Output",
 CellChangeTimes->{3.653025600488532*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"tableneg", "=", 
  RowBox[{"Table", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
      RowBox[{"table", "[", 
       RowBox[{"[", 
        RowBox[{"n", ",", "1"}], "]"}], "]"}], ",", 
      RowBox[{"table", "[", 
       RowBox[{"[", 
        RowBox[{"n", ",", "2"}], "]"}], "]"}]}], "}"}], ",", 
    RowBox[{"{", 
     RowBox[{"n", ",", 
      RowBox[{"Length", "[", "table", "]"}], ",", "1", ",", 
      RowBox[{"-", "1"}]}], "}"}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.6530256280811224`*^9, 3.653025650275585*^9}, {
  3.653025684312317*^9, 3.653025706934801*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "102.74029138285526`"}], ",", "8.986803904453573`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "94.97735419482147`"}], ",", "16.745360899685654`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "81.67264988776051`"}], ",", "21.882592788447795`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "69.4752430832869`"}], ",", "25.2855473030773`"}], "}"}], 
   ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "59.340703539287524`"}], ",", "27.669763616770055`"}], 
    "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "50.86146543698811`"}], ",", "29.36369717330473`"}], "}"}], 
   ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "43.68476284719025`"}], ",", "30.58726400284116`"}], "}"}], 
   ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "37.52477187824719`"}], ",", "31.485906199516307`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "32.157047922741036`"}], ",", "32.15592544960383`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "27.40735225903813`"}], ",", "32.6616528065031`"}], "}"}], 
   ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "23.140336377968637`"}], ",", "33.04659768278707`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "19.249962345677794`"}], ",", "33.34056896623118`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "15.651962686544175`"}], ",", "33.564212857492805`"}], 
    "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "12.278080696249921`"}], ",", "33.73191764355944`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "9.071700676415938`"}], ",", "33.853684391361874`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "5.984502082779737`"}], ",", "33.93633430768013`"}], "}"}], 
   ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "2.973836935089999`"}], ",", "33.984280211112214`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "0.0005934119457313233`"}], ",", "33.9999999993741`"}], 
    "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"2.971598099980275`", ",", "33.97235078350976`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"5.974793182445534`", ",", "33.88819457098638`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"9.04101350485003`", ",", "33.74387750805961`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"12.204346102048484`", ",", "33.532986332045596`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"15.502076865802174`", ",", "33.24582603153428`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"18.975935572803884`", ",", "32.86860934351664`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"22.673466873094174`", ",", "32.38226940411344`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"26.649505202584844`", ",", "31.760769312414467`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"30.967659012588182`", ",", "30.968740006678`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"35.701574339040285`", ",", "29.958239710315315`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"40.93551217105428`", ",", "28.66441896788739`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"46.76339905326575`", ",", "26.999949276301397`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"53.284989329435156`", ",", "24.84833081825245`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"59.76810786306821`", ",", "21.75499356897768`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"65.57314917117722`", ",", "17.571499007732125`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"69.69433542965231`", ",", "12.290245957481417`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"72.17201778710373`", ",", "6.315502663054262`"}], "}"}]}], 
  "}"}]], "Output",
 CellChangeTimes->{
  3.6530256507065945`*^9, {3.6530256885524035`*^9, 3.653025707454812*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{
  RowBox[{"{", 
   RowBox[{"x", ",", "y"}], "}"}], "/.", 
  RowBox[{"FindRoot", "[", 
   RowBox[{
    RowBox[{
     RowBox[{
      RowBox[{"VerAP", "[", 
       RowBox[{"x", ",", "1"}], "]"}], "\[Equal]", 
      RowBox[{
       RowBox[{"Sin", "[", 
        RowBox[{"\[Pi]", "*", 
         RowBox[{"5", "/", "180"}]}], "]"}], "*", "x"}]}], "&&", " ", 
     RowBox[{"y", "\[Equal]", 
      RowBox[{
       RowBox[{"Sin", "[", 
        RowBox[{"\[Pi]", "*", 
         RowBox[{"5", "/", "180"}]}], "]"}], "*", "x"}]}]}], ",", 
    RowBox[{"{", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"x", ",", "0"}], "}"}], ",", 
      RowBox[{"{", 
       RowBox[{"y", ",", "0"}], "}"}]}], "}"}]}], "]"}]}]], "Input",
 CellChangeTimes->{{3.6530227810039186`*^9, 3.653022785124743*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{"72.17859990515358`", ",", "6.290779485219709`"}], "}"}]], "Output",
 CellChangeTimes->{3.653022786384995*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{
  RowBox[{"SPINT", "[", 
   RowBox[{"x_", ",", "y_"}], "]"}], ":=", 
  RowBox[{"VerAP", "[", 
   RowBox[{"x", ",", "1"}], "]"}]}]], "Input",
 CellChangeTimes->{{3.6530235460156946`*^9, 3.6530235752488656`*^9}}],

Cell[BoxData[
 RowBox[{
  RowBox[{"GeneratePoints", "[", 
   RowBox[{"SPINT_", ",", "HorExt_", ",", "HorInt_"}], "]"}], ":=", 
  RowBox[{"Module", "[", 
   RowBox[{
    RowBox[{"{", 
     RowBox[{
     "x", ",", "y", ",", "tablepos", ",", "tableneg", ",", "angle", ",", 
      "n"}], "}"}], ",", "\[IndentingNewLine]", 
    RowBox[{
     RowBox[{"tablepos", "=", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{
         RowBox[{"{", 
          RowBox[{"x", ",", "y"}], "}"}], "/.", 
         RowBox[{"FindRoot", "[", 
          RowBox[{
           RowBox[{
            RowBox[{
             RowBox[{"VerAP", "[", 
              RowBox[{"x", ",", "1"}], "]"}], "\[Equal]", 
             RowBox[{
              RowBox[{"Tan", "[", 
               RowBox[{"angle", " ", "Degree"}], "]"}], "*", "x"}]}], "&&", 
            " ", 
            RowBox[{"y", "\[Equal]", 
             RowBox[{"VerAP", "[", 
              RowBox[{"x", ",", "1"}], "]"}]}]}], ",", 
           RowBox[{"{", 
            RowBox[{
             RowBox[{"{", 
              RowBox[{"x", ",", "1"}], "}"}], ",", 
             RowBox[{"{", 
              RowBox[{"y", ",", "1"}], "}"}]}], "}"}]}], "]"}]}], ",", 
        RowBox[{"{", 
         RowBox[{"angle", ",", "3.001", ",", "177.001", ",", "3."}], "}"}]}], 
       "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{"tableneg", "=", 
      RowBox[{"Table", "[", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"tablepos", "[", 
           RowBox[{"[", 
            RowBox[{"n", ",", "1"}], "]"}], "]"}], ",", 
          RowBox[{"-", 
           RowBox[{"tablepos", "[", 
            RowBox[{"[", 
             RowBox[{"n", ",", "2"}], "]"}], "]"}]}]}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{"n", ",", 
          RowBox[{"Length", "[", "tablepos", "]"}], ",", "1", ",", 
          RowBox[{"-", "1"}]}], "}"}]}], "]"}]}], ";", "\[IndentingNewLine]", 
     RowBox[{
      RowBox[{"{", 
       RowBox[{"{", 
        RowBox[{"HorExt", ",", "0.0"}], "}"}], "}"}], " ", "~", "Join", " ", 
      "~", "tablepos", "~", "Join", "~", 
      RowBox[{"{", 
       RowBox[{"{", 
        RowBox[{
         RowBox[{"-", "HorInt"}], ",", "0.0"}], "}"}], "}"}], "~", "Join", 
      "~", "tableneg"}]}]}], "\[IndentingNewLine]", "]"}]}]], "Input",
 CellChangeTimes->{{3.653023252293886*^9, 3.6530232682645254`*^9}, {
  3.6530233056580224`*^9, 3.6530234103962145`*^9}, {3.653023490783473*^9, 
  3.6530235414055104`*^9}, {3.6530236415915256`*^9, 3.653023815376955*^9}, {
  3.653023999526207*^9, 3.653024007261594*^9}, {3.6530249846604614`*^9, 
  3.653025109259539*^9}, {3.6530251468210416`*^9, 3.653025269120591*^9}, {
  3.653025343017861*^9, 3.653025399265306*^9}, {3.6530254293750095`*^9, 
  3.6530255481573553`*^9}, {3.653025720881112*^9, 3.6530257451678057`*^9}, {
  3.6530260404281955`*^9, 3.6530261073869443`*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"GeneratePoints", "[", 
  RowBox[{"VerAP", ",", "73", ",", "105"}], "]"}]], "Input",
 CellChangeTimes->{{3.6530234260768414`*^9, 3.653023444887594*^9}}],

Cell[BoxData[
 RowBox[{"{", 
  RowBox[{
   RowBox[{"{", 
    RowBox[{"73", ",", "0.`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"72.70171831151674`", ",", "3.8114079773746194`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"71.80812227252837`", ",", "7.548604912755545`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"70.32134782538158`", ",", "11.139065449296659`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"68.24340255547773`", ",", "14.506827893525024`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"65.57314917117722`", ",", "17.571499007732122`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"62.300064826276255`", ",", "20.243720280387524`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"58.39016520496229`", ",", "22.415053696535132`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"54.68128014782274`", ",", "24.346818031557497`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"50.586697248911626`", ",", "25.776321784782457`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"46.76339905326575`", ",", "26.999949276301397`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"43.18987172897169`", ",", "28.04890237017945`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"39.84433386257553`", ",", "28.949665563969514`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"36.705480122659814`", ",", "29.72457247476996`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"33.75296061980789`", ",", "30.392368965935358`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"30.967659012588182`", ",", "30.968740006678`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"28.331824379838938`", ",", "31.466783155060998`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"25.829101509593684`", ",", "31.897422298739105`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"23.444493951834882`", ",", "32.26976199052265`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"21.16428514470699`", ",", "32.59138648174616`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"18.975935572803884`", ",", "32.86860934351664`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"16.86796823855329`", ",", "33.10668010982145`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"14.829850508266478`", ",", "33.309954197535916`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"12.851877353253897`", ",", "33.48203180163557`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"10.925058870773471`", ",", "33.62587074505549`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"9.04101350485003`", ",", "33.74387750805961`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"7.191867405195328`", ",", "33.837979939656044`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"5.370159719781255`", ",", "33.90968449497054`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"3.568753206678269`", ",", "33.960120257219586`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"1.780749296883086`", ",", "33.9900714883103`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "0.0005934119457313233`"}], ",", "33.9999999993741`"}], 
    "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "1.7821635728532117`"}], ",", "33.9943545345331`"}], "}"}], 
   ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "3.571760136379744`"}], ",", "33.977323169729004`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "5.377536573839584`"}], ",", "33.94859484164008`"}], "}"}], 
   ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "7.2079096271160115`"}], ",", "33.90763865657581`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "9.071700676415938`"}], ",", "33.853684391361874`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "10.97828924094414`"}], ",", "33.78569363335118`"}], "}"}], 
   ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "12.93778338330753`"}], ",", "33.70231985007989`"}], "}"}], 
   ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "14.961212432019927`"}], ",", "33.60185496461918`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "17.060748258851948`"}], ",", "33.48215909998282`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "19.249962345677794`"}], ",", "33.34056896623118`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "21.544127022963686`"}], ",", "33.173778793701885`"}], 
    "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "23.960570487745727`"}], ",", "32.97768562963009`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "26.519096356995664`"}], ",", "32.74718803874531`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "29.242479276599067`"}], ",", "32.475923563407534`"}], 
    "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "32.157047922741036`"}], ",", "32.15592544960383`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "35.29336460783676`"}], ",", "31.777172865604157`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "38.68700495345598`"}], ",", "31.327000930870444`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "42.3794289730806`"}], ",", "30.789327375064154`"}], "}"}], 
   ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "46.41891214690166`"}], ",", "30.14364219620932`"}], "}"}], 
   ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "50.86146543698811`"}], ",", "29.36369717330473`"}], "}"}], 
   ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "55.771608474191126`"}], ",", "28.415827779620834`"}], 
    "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "61.22276148179482`"}], ",", "27.256849261757186`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "67.29688380007121`"}], ",", "25.831505745491956`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "74.08281904145464`"}], ",", "24.06953757352922`"}], "}"}], 
   ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "81.67264988776051`"}], ",", "21.882592788447795`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "90.15531482565979`"}], ",", "19.161459143130394`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "97.14888591505498`"}], ",", "15.385133826297672`"}], "}"}],
    ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "101.70866107159998`"}], ",", "10.688216284188842`"}], 
    "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "104.19887986882877`"}], ",", "5.4590082908838715`"}], 
    "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "105"}], ",", "0.`"}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "104.19887986882877`"}], ",", 
     RowBox[{"-", "5.4590082908838715`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "101.70866107159998`"}], ",", 
     RowBox[{"-", "10.688216284188842`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "97.14888591505498`"}], ",", 
     RowBox[{"-", "15.385133826297672`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "90.15531482565979`"}], ",", 
     RowBox[{"-", "19.161459143130394`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "81.67264988776051`"}], ",", 
     RowBox[{"-", "21.882592788447795`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "74.08281904145464`"}], ",", 
     RowBox[{"-", "24.06953757352922`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "67.29688380007121`"}], ",", 
     RowBox[{"-", "25.831505745491956`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "61.22276148179482`"}], ",", 
     RowBox[{"-", "27.256849261757186`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "55.771608474191126`"}], ",", 
     RowBox[{"-", "28.415827779620834`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "50.86146543698811`"}], ",", 
     RowBox[{"-", "29.36369717330473`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "46.41891214690166`"}], ",", 
     RowBox[{"-", "30.14364219620932`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "42.3794289730806`"}], ",", 
     RowBox[{"-", "30.789327375064154`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "38.68700495345598`"}], ",", 
     RowBox[{"-", "31.327000930870444`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "35.29336460783676`"}], ",", 
     RowBox[{"-", "31.777172865604157`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "32.157047922741036`"}], ",", 
     RowBox[{"-", "32.15592544960383`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "29.242479276599067`"}], ",", 
     RowBox[{"-", "32.475923563407534`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "26.519096356995664`"}], ",", 
     RowBox[{"-", "32.74718803874531`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "23.960570487745727`"}], ",", 
     RowBox[{"-", "32.97768562963009`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "21.544127022963686`"}], ",", 
     RowBox[{"-", "33.173778793701885`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "19.249962345677794`"}], ",", 
     RowBox[{"-", "33.34056896623118`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "17.060748258851948`"}], ",", 
     RowBox[{"-", "33.48215909998282`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "14.961212432019927`"}], ",", 
     RowBox[{"-", "33.60185496461918`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "12.93778338330753`"}], ",", 
     RowBox[{"-", "33.70231985007989`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "10.97828924094414`"}], ",", 
     RowBox[{"-", "33.78569363335118`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "9.071700676415938`"}], ",", 
     RowBox[{"-", "33.853684391361874`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "7.2079096271160115`"}], ",", 
     RowBox[{"-", "33.90763865657581`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "5.377536573839584`"}], ",", 
     RowBox[{"-", "33.94859484164008`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "3.571760136379744`"}], ",", 
     RowBox[{"-", "33.977323169729004`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "1.7821635728532117`"}], ",", 
     RowBox[{"-", "33.9943545345331`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{
     RowBox[{"-", "0.0005934119457313233`"}], ",", 
     RowBox[{"-", "33.9999999993741`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"1.780749296883086`", ",", 
     RowBox[{"-", "33.9900714883103`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"3.568753206678269`", ",", 
     RowBox[{"-", "33.960120257219586`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"5.370159719781255`", ",", 
     RowBox[{"-", "33.90968449497054`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"7.191867405195328`", ",", 
     RowBox[{"-", "33.837979939656044`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"9.04101350485003`", ",", 
     RowBox[{"-", "33.74387750805961`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"10.925058870773471`", ",", 
     RowBox[{"-", "33.62587074505549`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"12.851877353253897`", ",", 
     RowBox[{"-", "33.48203180163557`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"14.829850508266478`", ",", 
     RowBox[{"-", "33.309954197535916`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"16.86796823855329`", ",", 
     RowBox[{"-", "33.10668010982145`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"18.975935572803884`", ",", 
     RowBox[{"-", "32.86860934351664`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"21.16428514470699`", ",", 
     RowBox[{"-", "32.59138648174616`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"23.444493951834882`", ",", 
     RowBox[{"-", "32.26976199052265`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"25.829101509593684`", ",", 
     RowBox[{"-", "31.897422298739105`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"28.331824379838938`", ",", 
     RowBox[{"-", "31.466783155060998`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"30.967659012588182`", ",", 
     RowBox[{"-", "30.968740006678`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"33.75296061980789`", ",", 
     RowBox[{"-", "30.392368965935358`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"36.705480122659814`", ",", 
     RowBox[{"-", "29.72457247476996`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"39.84433386257553`", ",", 
     RowBox[{"-", "28.949665563969514`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"43.18987172897169`", ",", 
     RowBox[{"-", "28.04890237017945`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"46.76339905326575`", ",", 
     RowBox[{"-", "26.999949276301397`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"50.586697248911626`", ",", 
     RowBox[{"-", "25.776321784782457`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"54.68128014782274`", ",", 
     RowBox[{"-", "24.346818031557497`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"58.39016520496229`", ",", 
     RowBox[{"-", "22.415053696535132`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"62.300064826276255`", ",", 
     RowBox[{"-", "20.243720280387524`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"65.57314917117722`", ",", 
     RowBox[{"-", "17.571499007732122`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"68.24340255547773`", ",", 
     RowBox[{"-", "14.506827893525024`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"70.32134782538158`", ",", 
     RowBox[{"-", "11.139065449296659`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"71.80812227252837`", ",", 
     RowBox[{"-", "7.548604912755545`"}]}], "}"}], ",", 
   RowBox[{"{", 
    RowBox[{"72.70171831151674`", ",", 
     RowBox[{"-", "3.8114079773746194`"}]}], "}"}]}], "}"}]], "Output",
 CellChangeTimes->{
  3.653023445697626*^9, 3.653024012188845*^9, {3.6530250563163743`*^9, 
   3.6530250691029024`*^9}, {3.6530251887887583`*^9, 3.653025204500226*^9}, {
   3.6530252495317802`*^9, 3.6530252718115664`*^9}, {3.65302538859441*^9, 
   3.653025401781282*^9}, 3.6530255560245275`*^9, {3.6530257268482375`*^9, 
   3.6530257483008766`*^9}, 3.653026052516691*^9, 3.653026113018175*^9}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Show", "[", "\[IndentingNewLine]", 
  RowBox[{
   RowBox[{"Plot", "[", 
    RowBox[{
     RowBox[{"{", 
      RowBox[{
       RowBox[{"VerAP", "[", 
        RowBox[{"x", ",", "1"}], "]"}], ",", 
       RowBox[{"-", 
        RowBox[{"VerAP", "[", 
         RowBox[{"x", ",", "1"}], "]"}]}]}], "}"}], ",", 
     RowBox[{"{", 
      RowBox[{"x", ",", 
       RowBox[{"-", "126"}], ",", "126"}], "}"}], ",", 
     RowBox[{"PlotRange", "\[Rule]", "All"}], ",", 
     RowBox[{"AspectRatio", "\[Rule]", "Automatic"}], ",", 
     RowBox[{"ImageSize", "\[Rule]", "1200"}], ",", 
     RowBox[{"PlotStyle", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Thickness", "[", "0.005", "]"}], ",", "Blue"}], "}"}], ",", 
        RowBox[{"{", 
         RowBox[{
          RowBox[{"Thickness", "[", "0.005", "]"}], ",", "Blue"}], "}"}]}], 
       "}"}]}]}], "]"}], ",", "\[IndentingNewLine]", 
   RowBox[{"ListPlot", "[", 
    RowBox[{
     RowBox[{"GeneratePoints", "[", 
      RowBox[{"VerAP", ",", "73", ",", "105"}], "]"}], ",", 
     RowBox[{"Joined", "\[Rule]", "True"}], ",", 
     RowBox[{"PlotStyle", "\[Rule]", 
      RowBox[{"{", 
       RowBox[{
        RowBox[{"Thickness", "[", "0.002", "]"}], ",", "Red"}], "}"}]}]}], 
    "]"}]}], "\[IndentingNewLine]", "]"}]], "Input",
 CellChangeTimes->{{3.6530257986945066`*^9, 3.65302601013095*^9}}],

Cell[BoxData[
 GraphicsBox[{{{}, {}, 
    {RGBColor[0, 0, 1], Thickness[0.005], LineBox[CompressedData["
1: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
u5pic1MVbsR68gVO0SH1SGAyI1MZ1G5JytTOYPMzTP3qmaUEBQ2v1MV+0aHh
Qn1Xe6oilAiZWlZxOoPc5i9XH3msB5zBHE2IzxlcRisc3TfJQ4XzfR8fYWc4
9KDGlcmSg9or62P5ZJ3hZvXusnQLGdj8/O1ZLwVnSDjzwpTZKA31w2dzH6k6
Q9b+YCWanhRs5bEq4tZyBsuh31bvQyTgldZylfsmZyDLXlqrzxIFJ/uKxvt4
Z7BX25c9ECYIbw6EvPtDcoY4yYP60Qs84JKpPrrDzBkOX3Bnru1covY+GZi9
Z+EM///+Z2ffRc7lrWwPLzuI0xzYHt/yXG/Bje2fb64H2YawLTXtPTSRzXZ7
jOD8p6tsJwtUCnzIY3tZXcTodTHbY161Z8tesF3dIks5Nsa2d0FnlhBpx18X
7bS003/HNkf1TJK0vutfC8q0JZfFu/01kzPBJv2Z+18b9XP2iUkx/toddmm9
cfb8a92iEYpdmtdfo1UjZb/hnezrffare6bo/dcSonzt1hvYVjO539+uzfaW
zLm5YUO2kyxPa/JuY1s4v+Cs41G25fwnXIfa2dZJT/ML7Gbb5BkujNXHtpd0
dDLXF7ZvNAjUav5mW11DVyVMy4c9f3rHpoVNbG+NPURJILAd+K7WOcuc7eJE
h8SqHWzXlrEygMF22+DFGy3ebE8bDVZ92Mf2n90JDf5hbIuf13jz72G2VWpa
Bo8eY/t/76v/+v8ABLwwDw==
      "]]}, 
    {RGBColor[0, 0, 1], Thickness[0.005], LineBox[CompressedData["
1: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
e1Sb1Hs6ujt2Ndn6pjLciPHgCZiio5SjAUmMDEVQuSUuVTuL9c8g5atHpgIU
NLxSE/lFRw0X67vaU+ShRMDEoordCcls+XL1kftGwOnP0wR4nJDzaIWD22ZZ
qHC67+0t6IQOP6hxYc7IQO2VjTE80k7oZvWesjRzKdjy/O05TzknFH/2hQmz
URLqh8/lPlJ2QpkHghRouhKwjcuyiFPTCVkM/bZ8HywGrzRXqtw2OyGydNZ6
vRlhcLSraLyPd0J2KvuzB0L54c3B4Hd/SE4oVvyQXtQiFzhnqI3uNHVCRy66
Mdd3LjN7nwzM3TN3Qv///mdX3yX2lW0sD6/Yi9LsWR7f+lx30ZXln2+uB9oE
sywx7TU0kc1yezT/wqerLCfxVfJ9yGN5RU3I8HUxy2OetefKXrBc3SJNOT7G
sldBZ6YAaedfF+2ysNV7xzJb9WyipJ7LX/NLtSWVxbn+NZM93jrtmdtfG/az
94lIMP7aDe3WfOPk8dc6RSMU21TPv4Y1Q0Xf4V2s//vsW/dM3uuvxYR52q1U
WVYxvt/frsXy1oz5+WEDlhMtzmhwb2dZML/gnMMxlmX8JlyG2lnWTkv1Dehm
2fgZLnSmj2VPyagkji8s32jgq9X4zbKauo5SqKY3q//0js2Lm1neFnOYEk9g
OeBdrVOmGcvFCfYJVTtZri2bSUcMltsGL91o8WJ52nCw6sN+lv/siW/wC2VZ
9IL6m3+PsKxU0zJ47DjL/3tf/df/B8JB/48=
      "]]}}, {{}, 
    {RGBColor[1, 0, 0], Thickness[0.002], LineBox[CompressedData["
1:eJxdlX1QVGUUxhEbDd1BGbRBhUpnF11HBHblS5bdxwVFWBFBEIIQRfxIQkOm
+DBYUwpRETQEHBOFatAkJ0E+ZECOuWhrQSQMhUoasgospO2yKoZuW43/nDtz
5947d+5933PO8/yeuQk7wzdbW1lZpVvOf6//HQjHq1ury3rjwKJw/LRqSdrV
LFsk6zNXNBjDMOXXzI9b3d+ETpz+pLAoDMI0cbE00BkH+kIHPp8WhifX3zBk
T3RB3+47GecT12Dooer7kKPu+EYj/WybcygGK7SpifIluFll+vOxewhu1OSY
sN0TkxfMclsSpcIt6WQ7bbQ3/ONkOgdVEOZ2BExqvuaDFO3WafUbA3Es3lw1
bl6K+a6f1IeULodT2eneHIEM70X+ONd+2B+PElQrnYwyVG6RLgqJUWJCw1BR
1iU/zDqdOXHjPSD+TH/wrkQ5jJcD9jQ8lcPfOirabLlmvK9KMUTIkBf6yyx1
mgL9GkezossHTtqWtGadAgVbpsTeSPFCl7qkIHceIG2KLbFd6IFLkvj8ahUw
WzIw2D0mQV1NUMninUBpftlC6e9uyN926kJlPlAhSl3Yd8YF73Yri6oqgW23
GwLEF8WY3tXpVdMM5F0YW1PeI8I5zbr9jh3AoOBOg3nGPARXdWzwugv0jxy/
n65xRPJVnxGlHnCdrHKeunsmOrXlBz4YBUTJ7rvbDwngmJ3urXsO+Lbnjhmy
xhWR6hNnG18CoSskqQ9S/FsGKl+azWaga0e0sXnfeEu6z1brQMtzoTLt+ZOj
AnrWZhp2eAFENRcbSvfOpDbzisNJY8Bew33lgy5HEgTr9rhY1vvwZLqxVjiP
yq3qc5ePAJman9f2jYrouEl34kg/kG2vEYruiWl93eBJXQ+QY+dmIxx2IRpf
f8ymDei1PSvJn+ZOhYbzm+ot9T8Y8t//QiGlJHP+1ZJzQJ26dEB10INsf3NJ
kBdb6l9/2PDQ5EX9+7LbhFmATnNRfT9nKbW7Ftz+Mh7YZJS8ZS/3o2Inz+l6
GaC3+Ug0ewaoPSIjzmRv6Ydv9bNDXy8jzRybttFrCqz8SnH9UZQ/lfcoIuvW
KnAyQP/2EbflZGjqjbW7IUd2knawzCOQdkyd39QqlOMHxW11wI4g6njxunJO
nB9u/v2anaZPRQl+md+lbpfBuqBl174vVlOt4uBdWuaLBRMGhVada8gUri7o
tehIXCEbWPVpONU693u22XmjcbNTtSApgkrtbh3/6w8PNElKv32ct47KEvQJ
kWIprpi10blB0bR6ulbp1roYDmVPa2KS36GeiL19cRtEMDqW72oUxNCpK08D
JnXP/N+3iKFX9mXviX1P7P/E1ie2P2L7J1YfsfqJ9YdY/4j1l1j/ic2H2PyI
zZfY/Inpg5h+iOmLmP6I6ZOYfonpm5j+ifmDmH+I+YuY/4j5k5h/ifmbmP+J
8YEYP4jxhRh/iPGJGL+I8Y0Y/4jxkRg/ifGVGH+J8ZkYv4nxnRj/ieUDsfwg
li/E8odYPhHLL2L5Riz/iOUjsfwklq/0DzkGqVk=
      "]]}, {}}},
  Axes->True,
  AxesLabel->{None, None},
  AxesOrigin->{0, 0},
  ImageSize->1200,
  Method->{},
  PlotRange->{All, All},
  PlotRangeClipping->True,
  PlotRangePadding->{Automatic, Automatic}]], "Output",
 CellChangeTimes->{{3.65302582452909*^9, 3.6530258467393103`*^9}, 
   3.6530258788543005`*^9, {3.65302591265571*^9, 3.6530260106129723`*^9}, 
   3.6530260636701684`*^9, 3.6530261201825285`*^9}]
}, Open  ]],

Cell[BoxData[
 RowBox[{"Sin", "[", 
  RowBox[{"\[Pi]", "*", 
   RowBox[{"175", "/", "180"}]}], "]"}]], "Input",
 CellChangeTimes->{{3.653024191363852*^9, 3.653024213113515*^9}}],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"Tan", "[", 
  FractionBox["\[Pi]", "36."], "]"}]], "Input",
 CellChangeTimes->{{3.6530244322731557`*^9, 3.653024452886744*^9}}],

Cell[BoxData["0.08748866352592401`"], "Output",
 CellChangeTimes->{{3.6530244391230183`*^9, 3.6530244531767387`*^9}}]
}, Open  ]],

Cell[CellGroupData[{

Cell[BoxData[
 RowBox[{"VerAP", "[", 
  RowBox[{"0", ",", "1."}], "]"}]], "Input",
 CellChangeTimes->{{3.6530247123465586`*^9, 3.653024721226736*^9}}],

Cell[BoxData["34.`"], "Output",
 CellChangeTimes->{{3.6530247176466646`*^9, 3.6530247216667447`*^9}}]
}, Open  ]]
}, Open  ]]
}, Open  ]]
},
WindowSize->{1337, 1042},
WindowMargins->{{1, Automatic}, {Automatic, 0}},
FrontEndVersion->"9.0 for Microsoft Windows (32-bit) (January 25, 2013)",
StyleDefinitions->"Default.nb"
]
(* End of Notebook Content *)

(* Internal cache information *)
(*CellTagsOutline
CellTagsIndex->{}
*)
(*CellTagsIndex
CellTagsIndex->{}
*)
(*NotebookFileOutline
Notebook[{
Cell[CellGroupData[{
Cell[1485, 35, 118, 3, 65, "Subtitle",
 Evaluatable->False],
Cell[1606, 40, 197, 6, 67, "Text",
 Evaluatable->False],
Cell[1806, 48, 484, 31, 32, "Message",
 Evaluatable->False],
Cell[2293, 81, 271, 8, 52, "Input"],
Cell[2567, 91, 246, 7, 31, "Input"],
Cell[2816, 100, 54, 1, 31, "Input"]
}, Open  ]],
Cell[CellGroupData[{
Cell[2907, 106, 124, 2, 117, "Title"],
Cell[3034, 110, 71, 1, 31, "Input"],
Cell[CellGroupData[{
Cell[3130, 115, 249, 4, 72, "Subtitle"],
Cell[3382, 121, 1009, 23, 132, "Input"]
}, Closed]],
Cell[CellGroupData[{
Cell[4428, 149, 121, 2, 72, "Subtitle"],
Cell[4552, 153, 10569, 261, 772, "Input"]
}, Closed]],
Cell[CellGroupData[{
Cell[15158, 419, 190, 5, 72, "Subtitle"],
Cell[15351, 426, 12336, 331, 761, "Input"]
}, Closed]],
Cell[CellGroupData[{
Cell[27724, 762, 93, 1, 54, "Subtitle"],
Cell[27820, 765, 1866, 53, 112, "Input"],
Cell[CellGroupData[{
Cell[29711, 822, 92, 1, 67, "Section"],
Cell[29806, 825, 2019, 58, 112, "Input"]
}, Open  ]],
Cell[CellGroupData[{
Cell[31862, 888, 94, 1, 67, "Section"],
Cell[31959, 891, 2356, 67, 70, "Input"]
}, Closed]]
}, Open  ]],
Cell[CellGroupData[{
Cell[34364, 964, 184, 5, 72, "Subtitle"],
Cell[34551, 971, 11438, 302, 860, "Input"]
}, Closed]]
}, Open  ]],
Cell[CellGroupData[{
Cell[46038, 1279, 991, 14, 117, "Title"],
Cell[CellGroupData[{
Cell[47054, 1297, 1191, 18, 31, "Input"],
Cell[48248, 1317, 1027, 31, 52, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[49312, 1353, 376, 6, 31, "Input"],
Cell[49691, 1361, 1102, 15, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[50830, 1381, 351, 6, 31, "Input"],
Cell[51184, 1389, 866, 19, 238, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[52087, 1413, 554, 10, 31, "Input"],
Cell[52644, 1425, 359, 5, 31, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[53052, 1436, 115, 2, 103, "Title"],
Cell[53170, 1440, 133, 3, 31, "Input"],
Cell[53306, 1445, 300, 9, 31, "Input"],
Cell[CellGroupData[{
Cell[53631, 1458, 1439, 42, 52, "Input"],
Cell[55073, 1502, 29716, 494, 232, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[84826, 2001, 4063, 108, 212, "Input"],
Cell[88892, 2111, 83115, 1375, 232, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[172056, 3492, 115, 2, 103, "Title"],
Cell[172174, 3496, 133, 3, 31, "Input"],
Cell[172310, 3501, 302, 9, 31, "Input"],
Cell[CellGroupData[{
Cell[172637, 3514, 100, 3, 31, "Input"],
Cell[172740, 3519, 101, 1, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[172878, 3525, 2674, 72, 152, "Input"],
Cell[175555, 3599, 53678, 890, 232, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[229282, 4495, 115, 2, 103, "Title"],
Cell[229400, 4499, 346, 7, 106, "Text"],
Cell[229749, 4508, 506, 14, 152, "Input"],
Cell[CellGroupData[{
Cell[230280, 4526, 241, 9, 40, "Input"],
Cell[230524, 4537, 304, 8, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[230865, 4550, 4496, 125, 212, "Input"],
Cell[235364, 4677, 132164, 2181, 375, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[367565, 6863, 105, 2, 72, "Subtitle"],
Cell[367673, 6867, 2790, 68, 232, "Input"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[370512, 6941, 267, 5, 103, "Title"],
Cell[CellGroupData[{
Cell[370804, 6950, 4068, 111, 332, "Input"],
Cell[374875, 7063, 19280, 322, 369, "Output"]
}, Open  ]]
}, Open  ]],
Cell[CellGroupData[{
Cell[394204, 7391, 190, 3, 103, "Title"],
Cell[394397, 7396, 181, 6, 68, "Text"],
Cell[394581, 7404, 910, 21, 172, "Input"],
Cell[CellGroupData[{
Cell[395516, 7429, 3020, 72, 172, "Input"],
Cell[398539, 7503, 81685, 1348, 335, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[480261, 8856, 427, 7, 72, "Subtitle"],
Cell[480691, 8865, 6666, 114, 57, "Text"],
Cell[487360, 8981, 568, 13, 52, "Input"],
Cell[487931, 8996, 14142, 403, 1432, "Input"],
Cell[CellGroupData[{
Cell[502098, 9403, 766, 19, 31, "Input"],
Cell[502867, 9424, 19226, 323, 373, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[522130, 9752, 257, 5, 31, "Input"],
Cell[522390, 9759, 122, 2, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[522549, 9766, 878, 25, 31, "Input"],
Cell[523430, 9793, 282, 6, 31, "Output"]
}, Open  ]],
Cell[523727, 9802, 114, 2, 31, "Input"]
}, Open  ]],
Cell[CellGroupData[{
Cell[523878, 9809, 515, 8, 72, "Subtitle"],
Cell[524396, 9819, 6692, 114, 57, "Text"],
Cell[531091, 9935, 2012, 50, 252, "Input"],
Cell[CellGroupData[{
Cell[533128, 9989, 2147, 47, 112, "Input"],
Cell[535278, 10038, 44440, 735, 812, "Output"]
}, Open  ]],
Cell[579733, 10776, 135, 3, 31, "Input"],
Cell[CellGroupData[{
Cell[579893, 10783, 71, 1, 31, "Input"],
Cell[579967, 10786, 96, 1, 31, "Output"]
}, Open  ]],
Cell[580078, 10790, 137, 3, 31, "Input"],
Cell[CellGroupData[{
Cell[580240, 10797, 119, 2, 31, "Input"],
Cell[580362, 10801, 70, 1, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[580469, 10807, 179, 4, 31, "Input"],
Cell[580651, 10813, 88, 1, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[580776, 10819, 132, 3, 39, "Input"],
Cell[580911, 10824, 116, 1, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[581064, 10830, 238, 7, 31, "Input"],
Cell[581305, 10839, 218, 6, 46, "Output"]
}, Open  ]],
Cell[581538, 10848, 146, 3, 31, "Input"],
Cell[CellGroupData[{
Cell[581709, 10855, 301, 9, 33, "Input"],
Cell[582013, 10866, 686, 23, 58, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[582736, 10894, 686, 22, 31, "Input"],
Cell[583425, 10918, 235, 5, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[583697, 10928, 95, 1, 31, "Input"],
Cell[583795, 10931, 209, 5, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[584041, 10941, 118, 2, 31, "Input"],
Cell[584162, 10945, 87, 1, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[584286, 10951, 122, 2, 31, "Input"],
Cell[584411, 10955, 89, 1, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[584537, 10961, 71, 1, 31, "Input"],
Cell[584611, 10964, 70, 1, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[584718, 10970, 71, 1, 31, "Input"],
Cell[584792, 10973, 70, 1, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[584899, 10979, 1427, 35, 31, "Input"],
Cell[586329, 11016, 4101, 113, 192, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[590467, 11134, 173, 4, 31, "Input"],
Cell[590643, 11140, 87, 1, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[590767, 11146, 600, 17, 31, "Input"],
Cell[591370, 11165, 3884, 111, 192, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[595291, 11281, 800, 25, 31, "Input"],
Cell[596094, 11308, 149, 3, 31, "Output"]
}, Open  ]],
Cell[596258, 11314, 234, 6, 31, "Input"],
Cell[596495, 11322, 2877, 72, 112, "Input"],
Cell[CellGroupData[{
Cell[599397, 11398, 175, 3, 31, "Input"],
Cell[599575, 11403, 14296, 398, 612, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[613908, 11806, 1418, 38, 112, "Input"],
Cell[615329, 11846, 20864, 350, 405, "Output"]
}, Open  ]],
Cell[636208, 12199, 177, 4, 31, "Input"],
Cell[CellGroupData[{
Cell[636410, 12207, 151, 3, 44, InheritFromParent],
Cell[636564, 12212, 117, 1, 31, "Output"]
}, Open  ]],
Cell[CellGroupData[{
Cell[636718, 12218, 150, 3, 31, "Input"],
Cell[636871, 12223, 101, 1, 31, "Output"]
}, Open  ]]
}, Open  ]]
}, Open  ]]
}
]
*)

(* End of internal cache information *)

(* NotebookSignature 2vpx3xR7DijdABwwRVURcSK# *)
