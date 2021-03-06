﻿Unit NumInWords;

{ Andy Preston, Apollo Developments, andy@anorak.org.uk, andy@apollod.omnia.co.uk

  Numbers in words - Version 4.3

  Copyright (C) 1999 Andy Preston
  Copyright (C) 1999 Egemen Sen

  Object-Pascal Units to express a number as words in various languages

  This library is free software; you can redistribute it and/or modify it under the terms of the GNU Library General Public
  License as published by the Free Software Foundation; either version 2 of the License, or (at your option) any later
  version.

  This library is distributed in the hope that it will be useful, but WITHOUT ANY WARRANTY; without even the implied warranty
  of MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU Library General Public License for more details.

  You should have received a copy of the GNU Library General Public License along with this library; if not, write to the
  Free Software Foundation, Inc., 59 Temple Place - Suite 330, Boston, MA  02111-1307, USA.

  This unit is a modified version of NumW_Eng }

Interface

Function NumberInWords_EN(TheNumber : Integer) : String;
Function NumberInWords_AR(TheNumber : Integer) : String;

Function NumberInWords   (TheNumber : Integer ) : String;

Implementation

Uses
  SysUtils, MainModule;




function HunToStr_AR(n: integer): string;
var      hun, Ten: integer;
         s, ss, AndStr: string;
begin
  hun := n div 100;
  Ten := n mod 100;

  AndStr := 'و';

  case Ten of
    0: s := '';
    1: s := 'واحد';
    2: s := 'اثنان';
    3: s := 'ثلاثة';
    4: s := 'اربعة';
    5: s := 'خمسة';
    6: s := 'ستة';
    7: s := 'سبعة';
    8: s := 'ثمانية';
    9: s := 'تسعة';
    10: s := 'عشرة';
    11: s := 'احدى عشر';
    12: s := 'اثنا عشر';
    13: s := 'ثلاثة عشر';
    14: s := 'اربعة عشر';
    15: s := 'خمسة عشر';
    16: s := 'ستة عشر';
    17: s := 'سبعة عشر';
    18: s := 'ثمانية عشر';
    19: s := 'تسعة عشر';
    20: s := 'عشرون';
    21: s := 'احدى و عشرون';
    22: s := 'اثنان و عشرون';
    23: s := 'ثلاثة و عشرون';
    24: s := 'اربعة و عشرون';
    25: s := 'خمسة و عشرون';
    26: s := 'ستة و عشرون';
    27: s := 'سبعة و عشرون';
    28: s := 'ثمانية و عشرون';
    29: s := 'تسعة و عشرون';
    30: s := 'ثلاثون';
    31: s := 'واحد و ثلاثون';
    32: s := 'اثنان و ثلاثون';
    33: s := 'ثلاثة و ثلاثون';
    34: s := 'اربعة و ثلاثون';
    35: s := 'خمسة و ثلاثون';
    36: s := 'ستة و ثلاثون';
    37: s := 'سبعة و ثلاثون';
    38: s := 'ثمانية و ثلاثون';
    39: s := 'تسعة و ثلاثون';
    40: s := 'اربعون';
    41: s := 'واحد و اربعون';
    42: s := 'اثنان و اربعون';
    43: s := 'ثلاثة و اربعون';
    44: s := 'اربعة و اربعون';
    45: s := 'خمسة و اربعون';
    46: s := 'ستة و اربعون';
    47: s := 'سبعة و اربعون';
    48: s := 'ثمانية و اربعون';
    49: s := 'تسعة و اربعون';
    50: s := 'خمسون';
    51: s := 'واحد و خمسون';
    52: s := 'اثنان و خمسون';
    53: s := 'ثلاثة و خمسون';
    54: s := 'اربعة و خمسون';
    55: s := 'خمسة و خمسون';
    56: s := 'ستة و خمسون';
    57: s := 'سبعة و خمسون';
    58: s := 'ثمانية و خمسون';
    59: s := 'تسعة و خمسون';
    60: s := 'ستون';
    61: s := 'واحد و ستون';
    62: s := 'اثنان و ستون';
    63: s := 'ثلاثة و ستون';
    64: s := 'اربعة و ستون';
    65: s := 'خمسة و ستون';
    66: s := 'ستة و ستون';
    67: s := 'سبعة و ستون';
    68: s := 'ثمانية و ستون';
    69: s := 'تسعة و ستون';
    70: s := 'سبعون';
    71: s := 'واحد و سبعون';
    72: s := 'اثنان و سبعون';
    73: s := 'ثلاثة و سبعون';
    74: s := 'اربعة و سبعون';
    75: s := 'خمسة و سبعون';
    76: s := 'ستة و سبعون';
    77: s := 'سبعة و سبعون';
    78: s := 'ثمانية و سبعون';
    79: s := 'تسعة و سبعون';
    80: s := 'ثمانون';
    81: s := 'واحد و ثمانون';
    82: s := 'اثنان و ثمانون';
    83: s := 'ثلاثة و ثمانون';
    84: s := 'اربعة و ثمانون';
    85: s := 'خمسة و ثمانون';
    86: s := 'ستة و ثمانون';
    87: s := 'سبعة و ثمانون';
    88: s := 'ثمانية و ثمانون';
    89: s := 'تسعة و ثمانون';
    90: s := 'تسعون';
    91: s := 'واحد و تسعون';
    92: s := 'اثنان و تسعون';
    93: s := 'ثلاثة و تسعون';
    94: s := 'اربعة و تسعون';
    95: s := 'خمسة و تسعون';
    96: s := 'ستة و تسعون';
    97: s := 'سبعة و تسعون';
    98: s := 'ثمانية و تسعون';
    99: s := 'تسعة و تسعون';
  end;

  case hun of
    0: ss := '';
    1: ss := 'مئة';
    2: ss := 'مئتان';
    3: ss := 'ثلاثمائة';
    4: ss := 'اربعمائة';
    5: ss := 'خمسمائة';
    6: ss := 'ستمائة';
    7: ss := 'سبعمائة';
    8: ss := 'ثمانمائة';
    9: ss := 'تسعمائة';
  end;


  if (hun > 0) and (Ten > 0) then Result := ss + ' ' + AndStr + ' ' + s;
  if (hun = 0) and (Ten > 0) then Result := s;
  if (hun > 0) and (Ten = 0) then Result := ss;
end;

function HunToStr_EN(n: integer): string;
var      hun, Ten: integer;
         s, ss, AndStr: string;
begin
  hun := n div 100;
  Ten := n mod 100;

  AndStr := 'And';

  case Ten of
    0: s := '';
    1: s := 'One';
    2: s := 'Two';
    3: s := 'Three';
    4: s := 'Four';
    5: s := 'Five';
    6: s := 'Six';
    7: s := 'Seven';
    8: s := 'Eight';
    9: s := 'Nine';
    10: s := 'Ten';
    11: s := 'Eleven';
    12: s := 'Twelve';
    13: s := 'Thirteen';
    14: s := 'Fourteen';
    15: s := 'Fifteen';
    16: s := 'Sixteen';
    17: s := 'Seventeen';
    18: s := 'Eighteen';
    19: s := 'Nineteen';
    20: s := 'Twenty';
    21: s := 'Twenty One';
    22: s := 'Twenty Two';
    23: s := 'Twenty Three';
    24: s := 'Twenty Four';
    25: s := 'Twenty Five';
    26: s := 'Twenty Six';
    27: s := 'Twenty Seven';
    28: s := 'Twenty Eight';
    29: s := 'Twenty Nine';
    30: s := 'Thirty';
    31: s := 'Thirty One';
    32: s := 'Thirty Two';
    33: s := 'Thirty Three';
    34: s := 'Thirty Four';
    35: s := 'Thirty Five';
    36: s := 'Thirty Six';
    37: s := 'Thirty Seven';
    38: s := 'Thirty Eight';
    39: s := 'Thirty Nine';
    40: s := 'Forty';
    41: s := 'Forty One';
    42: s := 'Forty Two';
    43: s := 'Forty Three';
    44: s := 'Forty Four';
    45: s := 'Forty Five';
    46: s := 'Forty Six';
    47: s := 'Forty Seven';
    48: s := 'Forty Eight';
    49: s := 'Forty Nine';
    50: s := 'Fifty';
    51: s := 'Fifty One';
    52: s := 'Fifty Two';
    53: s := 'Fifty Three';
    54: s := 'Fifty Four';
    55: s := 'Fifty Five';
    56: s := 'Fifty Six';
    57: s := 'Fifty Seven';
    58: s := 'Fifty Eight';
    59: s := 'Fifty Nine';
    60: s := 'Sixty';
    61: s := 'Sixty One';
    62: s := 'Sixty Two';
    63: s := 'Sixty Three';
    64: s := 'Sixty Four';
    65: s := 'Sixty Five';
    66: s := 'Sixty Six';
    67: s := 'Sixty Seven';
    68: s := 'Sixty Eight';
    69: s := 'Sixty Nine';
    70: s := 'Seventy';
    71: s := 'Seventy One';
    72: s := 'Seventy Two';
    73: s := 'Seventy Three';
    74: s := 'Seventy Four';
    75: s := 'Seventy Five';
    76: s := 'Seventy Six';
    77: s := 'Seventy Seven';
    78: s := 'Seventy Eight';
    79: s := 'Seventy Nine';
    80: s := 'Eighty';
    81: s := 'Eighty One';
    82: s := 'Eighty Two';
    83: s := 'Eighty Three';
    84: s := 'Eighty Four';
    85: s := 'Eighty Five';
    86: s := 'Eighty Six';
    87: s := 'Eighty Seven';
    88: s := 'Eighty Eight';
    89: s := 'Eighty Nine';
    90: s := 'Ninety';
    91: s := 'Ninety One';
    92: s := 'Ninety Two';
    93: s := 'Ninety Three';
    94: s := 'Ninety Four';
    95: s := 'Ninety Five';
    96: s := 'Ninety Six';
    97: s := 'Ninety Seven';
    98: s := 'Ninety Eight';
    99: s := 'Ninety Nine';
  end;

  case hun of
    0: ss := '';
    1: ss := 'One Hundred';
    2: ss := 'Two Hundred';
    3: ss := 'Three Hundred';
    4: ss := 'Four Hundred';
    5: ss := 'Five Hundred';
    6: ss := 'Six Hundred';
    7: ss := 'Seven Hundred';
    8: ss := 'Eight Hundred';
    9: ss := 'Nine Hundred';
  end;


  if (hun > 0) and (Ten > 0) then Result := ss + ' ' + AndStr + ' ' + s;
  if (hun = 0) and (Ten > 0) then Result := s;
  if (hun > 0) and (Ten = 0) then Result := ss;
end;


Function NumberInWords_EN(TheNumber : Integer) : String;
var      mil, th, hun, ones : integer;
         MilStr, ThStr, AndStr  : string;
begin
  MilStr := ' Milion ';
  ThStr := ' Thousand ';
  AndStr := ' And ';

  ones := Round(Int(TheNumber));
  mil := ones div 1000000;
  th := (ones mod 1000000) div 1000;
  hun := ones mod 1000;

  Result := '';
  if mil > 0 then Result := HunToStr_EN(mil) + MilStr;

  if (mil > 0) and ((th + hun) > 0) then Result := Result + AndStr;

  if th > 0 then Result := Result + HunToStr_EN(th) + ThStr;

  if (mil + th > 0) and (hun > 0) then Result := Result + AndStr;

  if hun > 0 then Result := Result + HunToStr_EN(hun);
end;

Function NumberInWords_AR(TheNumber : Integer) : String;
var      mil, th, hun, ones : integer;
         MilStr, ThStr, AndStr  : string;
begin
  MilStr := ' مليون ';
  ThStr := ' ألف ';
  AndStr := ' و ';

  ones := Round(Int(TheNumber));
  mil := ones div 1000000;
  th := (ones mod 1000000) div 1000;
  hun := ones mod 1000;

  Result := '';
  if mil > 0 then Result := HunToStr_AR(mil) + MilStr;

  if (mil > 0) and ((th + hun) > 0) then Result := Result + AndStr;

  if th > 0 then Result := Result + HunToStr_AR(th) + ThStr;

  if (mil + th > 0) and (hun > 0) then Result := Result + AndStr;

  if hun > 0 then Result := Result + HunToStr_AR(hun);
end;




Function NumberInWords   (TheNumber : Integer ) : String;
begin
  if UniMainModule.RTL then Result := NumberInWords_AR(TheNumber)
  else

  Result := NumberInWords_EN(TheNumber);
end;

End.