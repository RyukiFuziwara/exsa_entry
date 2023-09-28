xof 0302txt 0064
template Header {
 <3D82AB43-62DA-11cf-AB39-0020AF71E433>
 WORD major;
 WORD minor;
 DWORD flags;
}

template Vector {
 <3D82AB5E-62DA-11cf-AB39-0020AF71E433>
 FLOAT x;
 FLOAT y;
 FLOAT z;
}

template Coords2d {
 <F6F23F44-7686-11cf-8F52-0040333594A3>
 FLOAT u;
 FLOAT v;
}

template Matrix4x4 {
 <F6F23F45-7686-11cf-8F52-0040333594A3>
 array FLOAT matrix[16];
}

template ColorRGBA {
 <35FF44E0-6C7C-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
 FLOAT alpha;
}

template ColorRGB {
 <D3E16E81-7835-11cf-8F52-0040333594A3>
 FLOAT red;
 FLOAT green;
 FLOAT blue;
}

template IndexedColor {
 <1630B820-7842-11cf-8F52-0040333594A3>
 DWORD index;
 ColorRGBA indexColor;
}

template Boolean {
 <4885AE61-78E8-11cf-8F52-0040333594A3>
 WORD truefalse;
}

template Boolean2d {
 <4885AE63-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template MaterialWrap {
 <4885AE60-78E8-11cf-8F52-0040333594A3>
 Boolean u;
 Boolean v;
}

template TextureFilename {
 <A42790E1-7810-11cf-8F52-0040333594A3>
 STRING filename;
}

template Material {
 <3D82AB4D-62DA-11cf-AB39-0020AF71E433>
 ColorRGBA faceColor;
 FLOAT power;
 ColorRGB specularColor;
 ColorRGB emissiveColor;
 [...]
}

template MeshFace {
 <3D82AB5F-62DA-11cf-AB39-0020AF71E433>
 DWORD nFaceVertexIndices;
 array DWORD faceVertexIndices[nFaceVertexIndices];
}

template MeshFaceWraps {
 <4885AE62-78E8-11cf-8F52-0040333594A3>
 DWORD nFaceWrapValues;
 Boolean2d faceWrapValues;
}

template MeshTextureCoords {
 <F6F23F40-7686-11cf-8F52-0040333594A3>
 DWORD nTextureCoords;
 array Coords2d textureCoords[nTextureCoords];
}

template MeshMaterialList {
 <F6F23F42-7686-11cf-8F52-0040333594A3>
 DWORD nMaterials;
 DWORD nFaceIndexes;
 array DWORD faceIndexes[nFaceIndexes];
 [Material]
}

template MeshNormals {
 <F6F23F43-7686-11cf-8F52-0040333594A3>
 DWORD nNormals;
 array Vector normals[nNormals];
 DWORD nFaceNormals;
 array MeshFace faceNormals[nFaceNormals];
}

template MeshVertexColors {
 <1630B821-7842-11cf-8F52-0040333594A3>
 DWORD nVertexColors;
 array IndexedColor vertexColors[nVertexColors];
}

template Mesh {
 <3D82AB44-62DA-11cf-AB39-0020AF71E433>
 DWORD nVertices;
 array Vector vertices[nVertices];
 DWORD nFaces;
 array MeshFace faces[nFaces];
 [...]
}

Header{
1;
0;
1;
}

Mesh {
 272;
 4.93105;8.06607;7.16812;,
 4.47185;9.45824;6.00241;,
 2.61810;9.54444;6.83559;,
 3.07731;8.15227;8.00130;,
 -4.80015;8.06177;7.16018;,
 -2.95710;8.12502;8.01878;,
 -2.48370;9.54874;6.89770;,
 -4.32674;9.48549;6.03910;,
 3.69053;6.08580;8.72481;,
 2.72856;9.97413;6.40497;,
 -2.61323;9.97413;6.44103;,
 -3.57615;6.08580;8.76758;,
 3.60113;2.62564;8.50817;,
 -3.46905;2.62564;8.50957;,
 -8.74442;6.08580;3.62393;,
 -6.41634;9.97413;2.65958;,
 -6.40265;9.97413;-2.70418;,
 -8.72887;6.08580;-3.66847;,
 -8.46911;2.62564;3.50990;,
 -8.46887;2.62564;-3.56098;,
 -3.55963;6.08580;-8.77864;,
 -2.59928;9.97413;-6.45758;,
 2.71422;9.97413;-6.42063;,
 3.67255;6.08580;-8.73241;,
 -3.46853;2.62564;-8.55948;,
 3.60016;2.62564;-8.55702;,
 8.75174;6.08580;-3.62322;,
 6.44433;9.97413;-2.66748;,
 6.45891;9.97413;2.62328;,
 8.77075;6.08580;3.58014;,
 8.59630;2.62564;-3.55882;,
 8.59761;2.62564;3.50818;,
 -0.86623;13.71443;0.36063;,
 -0.32025;13.71443;-0.95354;,
 -0.86566;13.71443;-0.41011;,
 0.44851;13.71443;-0.95213;,
 -0.32080;13.71443;0.90517;,
 0.99110;13.71443;-0.40870;,
 0.44906;13.71443;0.90374;,
 0.99163;13.71443;0.35921;,
 -1.71870;-0.06554;4.97509;,
 2.53345;0.02253;4.97509;,
 -4.72542;-0.06953;-2.28379;,
 -4.72542;-0.10316;1.96836;,
 2.53345;0.10654;-5.29051;,
 -1.71870;0.01677;-5.29051;,
 5.54018;0.11070;1.96837;,
 5.54018;0.14602;-2.28379;,
 -2.61323;9.97413;6.44103;,
 2.72856;9.97413;6.40497;,
 -6.40265;9.97413;-2.70418;,
 -6.41634;9.97413;2.65958;,
 2.71422;9.97413;-6.42063;,
 -2.59928;9.97413;-6.45758;,
 6.45891;9.97413;2.62328;,
 6.44433;9.97413;-2.66748;,
 -3.20032;3.53185;7.72628;,
 -3.47646;4.26817;8.39294;,
 3.47647;4.26817;8.39294;,
 3.20033;3.53185;7.72628;,
 -3.92327;3.75936;9.47162;,
 3.92327;3.75936;9.47162;,
 -3.92327;3.30435;9.47162;,
 3.92327;3.30435;9.47162;,
 -3.47646;2.79554;8.39294;,
 3.47647;2.79554;8.39294;,
 -3.20032;3.53185;7.72628;,
 3.20033;3.53185;7.72628;,
 8.39294;4.26817;3.47646;,
 7.72628;3.53185;3.20032;,
 9.47162;3.75936;3.92327;,
 9.47162;3.30435;3.92327;,
 8.39294;2.79554;3.47646;,
 7.72628;3.53185;3.20032;,
 8.39294;4.26817;-3.47647;,
 7.72628;3.53185;-3.20033;,
 9.47162;3.75936;-3.92327;,
 9.47161;3.30435;-3.92327;,
 8.39294;2.79554;-3.47647;,
 7.72628;3.53185;-3.20033;,
 3.47646;4.26817;-8.39294;,
 3.20033;3.53185;-7.72628;,
 3.92327;3.75936;-9.47162;,
 3.92327;3.30435;-9.47162;,
 3.47646;2.79554;-8.39294;,
 3.20033;3.53185;-7.72628;,
 -3.47647;4.26817;-8.39294;,
 -3.20033;3.53185;-7.72628;,
 -3.92327;3.75936;-9.47162;,
 -3.92327;3.30435;-9.47161;,
 -3.47647;2.79554;-8.39294;,
 -3.20033;3.53185;-7.72628;,
 -8.39294;4.26817;-3.47646;,
 -7.72628;3.53185;-3.20033;,
 -9.47162;3.75936;-3.92327;,
 -9.47162;3.30435;-3.92327;,
 -8.39294;2.79554;-3.47646;,
 -7.72628;3.53185;-3.20033;,
 -8.39294;4.26817;3.47647;,
 -7.72628;3.53185;3.20033;,
 -9.47162;3.75936;3.92327;,
 -9.47162;3.30435;3.92327;,
 -8.39294;2.79554;3.47647;,
 -7.72628;3.53185;3.20033;,
 -3.47646;4.26817;8.39294;,
 -3.20032;3.53185;7.72628;,
 -3.92327;3.75936;9.47162;,
 -3.92327;3.30435;9.47162;,
 -3.47646;2.79554;8.39294;,
 -3.20032;3.53185;7.72628;,
 -3.20032;4.67335;7.72628;,
 -3.47646;5.40967;8.39294;,
 3.47647;5.40967;8.39294;,
 3.20033;4.67335;7.72628;,
 -3.92327;4.90086;9.47162;,
 3.92327;4.90086;9.47162;,
 -3.92327;4.44584;9.47162;,
 3.92327;4.44584;9.47162;,
 -3.47646;3.93703;8.39294;,
 3.47647;3.93703;8.39294;,
 -3.20032;4.67335;7.72628;,
 3.20033;4.67335;7.72628;,
 8.39294;5.40967;3.47646;,
 7.72628;4.67335;3.20032;,
 9.47162;4.90086;3.92327;,
 9.47162;4.44584;3.92327;,
 8.39294;3.93703;3.47646;,
 7.72628;4.67335;3.20032;,
 8.39294;5.40967;-3.47647;,
 7.72628;4.67335;-3.20033;,
 9.47162;4.90086;-3.92327;,
 9.47161;4.44584;-3.92327;,
 8.39294;3.93703;-3.47647;,
 7.72628;4.67335;-3.20033;,
 3.47646;5.40967;-8.39294;,
 3.20033;4.67335;-7.72628;,
 3.92327;4.90086;-9.47162;,
 3.92327;4.44584;-9.47162;,
 3.47646;3.93703;-8.39294;,
 3.20033;4.67335;-7.72628;,
 -3.47647;5.40967;-8.39294;,
 -3.20033;4.67335;-7.72628;,
 -3.92327;4.90086;-9.47162;,
 -3.92327;4.44584;-9.47161;,
 -3.47647;3.93703;-8.39294;,
 -3.20033;4.67335;-7.72628;,
 -8.39294;5.40967;-3.47646;,
 -7.72628;4.67335;-3.20033;,
 -9.47162;4.90086;-3.92327;,
 -9.47162;4.44584;-3.92327;,
 -8.39294;3.93703;-3.47646;,
 -7.72628;4.67335;-3.20033;,
 -8.39294;5.40967;3.47647;,
 -7.72628;4.67335;3.20033;,
 -9.47162;4.90086;3.92327;,
 -9.47162;4.44584;3.92327;,
 -8.39294;3.93703;3.47647;,
 -7.72628;4.67335;3.20033;,
 -3.47646;5.40967;8.39294;,
 -3.20032;4.67335;7.72628;,
 -3.92327;4.90086;9.47162;,
 -3.92327;4.44584;9.47162;,
 -3.47646;3.93703;8.39294;,
 -3.20032;4.67335;7.72628;,
 -2.48156;0.74016;5.99103;,
 -2.69568;1.31111;6.50796;,
 2.69569;1.31111;6.50796;,
 2.48157;0.74016;5.99103;,
 -3.04214;0.91657;7.34438;,
 3.04214;0.91657;7.34438;,
 -3.04214;0.56375;7.34438;,
 3.04214;0.56375;7.34438;,
 -2.69568;0.16921;6.50796;,
 2.69569;0.16921;6.50796;,
 -2.48156;0.74016;5.99103;,
 2.48157;0.74016;5.99103;,
 6.50796;1.31111;2.69568;,
 5.99103;0.74016;2.48156;,
 7.34438;0.91657;3.04214;,
 7.34438;0.56375;3.04214;,
 6.50796;0.16921;2.69568;,
 5.99103;0.74016;2.48156;,
 6.50796;1.31111;-2.69569;,
 5.99103;0.74016;-2.48157;,
 7.34438;0.91657;-3.04214;,
 7.34438;0.56375;-3.04214;,
 6.50796;0.16921;-2.69569;,
 5.99103;0.74016;-2.48157;,
 2.69568;1.31111;-6.50796;,
 2.48156;0.74016;-5.99103;,
 3.04214;0.91657;-7.34438;,
 3.04214;0.56375;-7.34438;,
 2.69568;0.16921;-6.50796;,
 2.48156;0.74016;-5.99103;,
 -2.69569;1.31111;-6.50796;,
 -2.48157;0.74016;-5.99103;,
 -3.04214;0.91657;-7.34438;,
 -3.04214;0.56375;-7.34438;,
 -2.69569;0.16921;-6.50796;,
 -2.48157;0.74016;-5.99103;,
 -6.50796;1.31111;-2.69568;,
 -5.99103;0.74016;-2.48156;,
 -7.34438;0.91657;-3.04214;,
 -7.34438;0.56375;-3.04214;,
 -6.50796;0.16921;-2.69568;,
 -5.99103;0.74016;-2.48156;,
 -6.50796;1.31111;2.69568;,
 -5.99103;0.74016;2.48156;,
 -7.34438;0.91657;3.04214;,
 -7.34438;0.56375;3.04214;,
 -6.50796;0.16921;2.69568;,
 -5.99103;0.74016;2.48156;,
 -2.69568;1.31111;6.50796;,
 -2.48156;0.74016;5.99103;,
 -3.04214;0.91657;7.34438;,
 -3.04214;0.56375;7.34438;,
 -2.69568;0.16921;6.50796;,
 -2.48156;0.74016;5.99103;,
 -2.48156;1.62529;5.99103;,
 -2.69568;2.19623;6.50796;,
 2.69569;2.19623;6.50796;,
 2.48157;1.62529;5.99103;,
 -3.04214;1.80170;7.34438;,
 3.04214;1.80170;7.34438;,
 -3.04214;1.44887;7.34438;,
 3.04214;1.44887;7.34438;,
 -2.69568;1.05434;6.50796;,
 2.69569;1.05434;6.50796;,
 -2.48156;1.62529;5.99103;,
 2.48157;1.62529;5.99103;,
 6.50796;2.19623;2.69568;,
 5.99103;1.62529;2.48156;,
 7.34438;1.80170;3.04214;,
 7.34438;1.44887;3.04214;,
 6.50796;1.05434;2.69568;,
 5.99103;1.62529;2.48156;,
 6.50796;2.19623;-2.69569;,
 5.99103;1.62529;-2.48157;,
 7.34438;1.80170;-3.04214;,
 7.34438;1.44887;-3.04214;,
 6.50796;1.05434;-2.69569;,
 5.99103;1.62529;-2.48157;,
 2.69568;2.19623;-6.50796;,
 2.48156;1.62529;-5.99103;,
 3.04214;1.80170;-7.34438;,
 3.04214;1.44887;-7.34438;,
 2.69568;1.05434;-6.50796;,
 2.48156;1.62529;-5.99103;,
 -2.69569;2.19623;-6.50796;,
 -2.48157;1.62529;-5.99103;,
 -3.04214;1.80170;-7.34438;,
 -3.04214;1.44887;-7.34438;,
 -2.69569;1.05434;-6.50796;,
 -2.48157;1.62529;-5.99103;,
 -6.50796;2.19623;-2.69568;,
 -5.99103;1.62529;-2.48156;,
 -7.34438;1.80170;-3.04214;,
 -7.34438;1.44887;-3.04214;,
 -6.50796;1.05434;-2.69568;,
 -5.99103;1.62529;-2.48156;,
 -6.50796;2.19623;2.69568;,
 -5.99103;1.62529;2.48156;,
 -7.34438;1.80170;3.04214;,
 -7.34438;1.44887;3.04214;,
 -6.50796;1.05434;2.69568;,
 -5.99103;1.62529;2.48156;,
 -2.69568;2.19623;6.50796;,
 -2.48156;1.62529;5.99103;,
 -3.04214;1.80170;7.34438;,
 -3.04214;1.44887;7.34438;,
 -2.69568;1.05434;6.50796;,
 -2.48156;1.62529;5.99103;;
 
 206;
 4;0,1,2,3;,
 4;4,5,6,7;,
 4;8,9,10,11;,
 4;12,8,11,13;,
 4;14,15,16,17;,
 4;18,14,17,19;,
 4;20,21,22,23;,
 4;24,20,23,25;,
 4;26,27,28,29;,
 4;30,26,29,31;,
 4;29,28,9,8;,
 4;31,29,8,12;,
 4;11,10,15,14;,
 4;13,11,14,18;,
 4;17,16,21,20;,
 4;19,17,20,24;,
 4;23,22,27,26;,
 4;25,23,26,30;,
 3;32,33,34;,
 3;35,33,32;,
 3;36,35,32;,
 3;37,35,36;,
 3;36,38,37;,
 3;39,37,38;,
 4;12,13,40,41;,
 4;18,19,42,43;,
 4;24,25,44,45;,
 4;30,31,46,47;,
 4;31,12,41,46;,
 4;13,18,43,40;,
 4;19,24,45,42;,
 4;25,30,47,44;,
 3;46,44,47;,
 3;44,46,41;,
 3;41,45,44;,
 3;41,40,45;,
 3;40,42,45;,
 3;43,42,40;,
 4;48,49,38,36;,
 4;50,51,32,34;,
 4;52,53,33,35;,
 4;54,55,37,39;,
 4;49,54,39,38;,
 4;51,48,36,32;,
 4;53,50,34,33;,
 4;55,52,35,37;,
 4;56,57,58,59;,
 4;57,60,61,58;,
 4;60,62,63,61;,
 4;62,64,65,63;,
 4;64,66,67,65;,
 4;59,58,68,69;,
 4;58,61,70,68;,
 4;61,63,71,70;,
 4;63,65,72,71;,
 4;65,67,73,72;,
 4;69,68,74,75;,
 4;68,70,76,74;,
 4;70,71,77,76;,
 4;71,72,78,77;,
 4;72,73,79,78;,
 4;75,74,80,81;,
 4;74,76,82,80;,
 4;76,77,83,82;,
 4;77,78,84,83;,
 4;78,79,85,84;,
 4;81,80,86,87;,
 4;80,82,88,86;,
 4;82,83,89,88;,
 4;83,84,90,89;,
 4;84,85,91,90;,
 4;87,86,92,93;,
 4;86,88,94,92;,
 4;88,89,95,94;,
 4;89,90,96,95;,
 4;90,91,97,96;,
 4;93,92,98,99;,
 4;92,94,100,98;,
 4;94,95,101,100;,
 4;95,96,102,101;,
 4;96,97,103,102;,
 4;99,98,104,105;,
 4;98,100,106,104;,
 4;100,101,107,106;,
 4;101,102,108,107;,
 4;102,103,109,108;,
 4;110,111,112,113;,
 4;111,114,115,112;,
 4;114,116,117,115;,
 4;116,118,119,117;,
 4;118,120,121,119;,
 4;113,112,122,123;,
 4;112,115,124,122;,
 4;115,117,125,124;,
 4;117,119,126,125;,
 4;119,121,127,126;,
 4;123,122,128,129;,
 4;122,124,130,128;,
 4;124,125,131,130;,
 4;125,126,132,131;,
 4;126,127,133,132;,
 4;129,128,134,135;,
 4;128,130,136,134;,
 4;130,131,137,136;,
 4;131,132,138,137;,
 4;132,133,139,138;,
 4;135,134,140,141;,
 4;134,136,142,140;,
 4;136,137,143,142;,
 4;137,138,144,143;,
 4;138,139,145,144;,
 4;141,140,146,147;,
 4;140,142,148,146;,
 4;142,143,149,148;,
 4;143,144,150,149;,
 4;144,145,151,150;,
 4;147,146,152,153;,
 4;146,148,154,152;,
 4;148,149,155,154;,
 4;149,150,156,155;,
 4;150,151,157,156;,
 4;153,152,158,159;,
 4;152,154,160,158;,
 4;154,155,161,160;,
 4;155,156,162,161;,
 4;156,157,163,162;,
 4;164,165,166,167;,
 4;165,168,169,166;,
 4;168,170,171,169;,
 4;170,172,173,171;,
 4;172,174,175,173;,
 4;167,166,176,177;,
 4;166,169,178,176;,
 4;169,171,179,178;,
 4;171,173,180,179;,
 4;173,175,181,180;,
 4;177,176,182,183;,
 4;176,178,184,182;,
 4;178,179,185,184;,
 4;179,180,186,185;,
 4;180,181,187,186;,
 4;183,182,188,189;,
 4;182,184,190,188;,
 4;184,185,191,190;,
 4;185,186,192,191;,
 4;186,187,193,192;,
 4;189,188,194,195;,
 4;188,190,196,194;,
 4;190,191,197,196;,
 4;191,192,198,197;,
 4;192,193,199,198;,
 4;195,194,200,201;,
 4;194,196,202,200;,
 4;196,197,203,202;,
 4;197,198,204,203;,
 4;198,199,205,204;,
 4;201,200,206,207;,
 4;200,202,208,206;,
 4;202,203,209,208;,
 4;203,204,210,209;,
 4;204,205,211,210;,
 4;207,206,212,213;,
 4;206,208,214,212;,
 4;208,209,215,214;,
 4;209,210,216,215;,
 4;210,211,217,216;,
 4;218,219,220,221;,
 4;219,222,223,220;,
 4;222,224,225,223;,
 4;224,226,227,225;,
 4;226,228,229,227;,
 4;221,220,230,231;,
 4;220,223,232,230;,
 4;223,225,233,232;,
 4;225,227,234,233;,
 4;227,229,235,234;,
 4;231,230,236,237;,
 4;230,232,238,236;,
 4;232,233,239,238;,
 4;233,234,240,239;,
 4;234,235,241,240;,
 4;237,236,242,243;,
 4;236,238,244,242;,
 4;238,239,245,244;,
 4;239,240,246,245;,
 4;240,241,247,246;,
 4;243,242,248,249;,
 4;242,244,250,248;,
 4;244,245,251,250;,
 4;245,246,252,251;,
 4;246,247,253,252;,
 4;249,248,254,255;,
 4;248,250,256,254;,
 4;250,251,257,256;,
 4;251,252,258,257;,
 4;252,253,259,258;,
 4;255,254,260,261;,
 4;254,256,262,260;,
 4;256,257,263,262;,
 4;257,258,264,263;,
 4;258,259,265,264;,
 4;261,260,266,267;,
 4;260,262,268,266;,
 4;262,263,269,268;,
 4;263,264,270,269;,
 4;264,265,271,270;;
 
 MeshMaterialList {
  2;
  206;
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  1,
  0,
  0,
  0,
  0,
  1,
  0;;
  Material {
   0.800000;0.800000;0.800000;0.850000;;
   5.000000;
   0.700000;0.700000;0.700000;;
   0.170000;0.170000;0.170000;;
   TextureFilename {
    "data\\TEXTURE\\Slime.png";
   }
  }
  Material {
   0.050196;0.065882;0.282353;1.000000;;
   5.000000;
   0.000000;0.000000;0.000000;;
   0.000000;0.000000;0.000000;;
  }
 }
 MeshNormals {
  161;
  0.084536;0.975739;-0.201958;,
  0.271429;0.712487;-0.647061;,
  0.373002;0.258159;-0.891192;,
  0.340366;-0.485997;-0.804958;,
  0.110446;-0.966968;-0.229728;,
  0.202642;0.975651;-0.083910;,
  0.648942;0.711813;-0.268693;,
  0.892099;0.260206;-0.369395;,
  0.811112;-0.478931;-0.335741;,
  0.391517;-0.905844;-0.161744;,
  0.338981;0.930468;0.139003;,
  0.649480;0.712421;0.265767;,
  0.893808;0.258379;0.366535;,
  0.810145;-0.485259;0.328921;,
  0.297303;-0.948508;0.109290;,
  0.106051;0.961816;0.252317;,
  0.271870;0.713930;0.645284;,
  0.374491;0.253744;0.891835;,
  0.339148;-0.500133;0.796772;,
  0.108654;-0.971115;0.212440;,
  -0.082286;0.976171;0.200798;,
  -0.264613;0.715451;0.646614;,
  -0.367645;0.249035;0.896001;,
  -0.322998;-0.513697;0.794851;,
  -0.072277;-0.975117;0.209580;,
  -0.199975;0.976289;0.082886;,
  -0.644767;0.716156;0.267200;,
  -0.895217;0.247001;0.370914;,
  -0.789590;-0.519092;0.327248;,
  -0.345909;-0.927206;0.143655;,
  -0.334754;0.931829;-0.140122;,
  -0.644269;0.715566;-0.269968;,
  -0.893646;0.248818;-0.373480;,
  -0.790238;-0.514257;-0.333262;,
  -0.255305;-0.959540;-0.118757;,
  -0.103395;0.961839;-0.253329;,
  -0.264014;0.714027;-0.648430;,
  -0.365864;0.253440;-0.895496;,
  -0.323410;-0.501056;-0.802713;,
  -0.073072;-0.971388;-0.225976;,
  0.330823;0.667605;0.666979;,
  -0.339456;0.649001;0.680857;,
  0.273318;0.699928;-0.659847;,
  -0.152884;0.916731;0.369094;,
  -0.382683;-0.000002;0.923880;,
  -0.152883;-0.916732;0.369093;,
  -0.273318;0.699929;-0.659847;,
  0.152884;0.916731;0.369094;,
  0.382684;-0.000005;0.923879;,
  0.152884;-0.916732;0.369094;,
  -0.659847;0.699928;-0.273317;,
  0.369094;0.916731;0.152883;,
  0.923880;-0.000005;0.382683;,
  0.369094;-0.916731;0.152883;,
  -0.659847;0.699928;0.273318;,
  0.369094;0.916731;-0.152884;,
  0.923879;-0.000004;-0.382684;,
  0.369094;-0.916731;-0.152884;,
  -0.273318;0.699927;0.659848;,
  0.152884;0.916731;-0.369094;,
  0.382683;-0.000004;-0.923880;,
  0.152883;-0.916732;-0.369094;,
  0.273318;0.699927;0.659848;,
  -0.152884;0.916731;-0.369094;,
  -0.382684;-0.000004;-0.923879;,
  -0.152883;-0.916732;-0.369093;,
  0.659848;0.699927;0.273318;,
  -0.369094;0.916731;-0.152884;,
  -0.923880;-0.000001;-0.382683;,
  -0.369093;-0.916732;-0.152883;,
  0.659847;0.699928;-0.273318;,
  -0.369094;0.916731;0.152884;,
  -0.923880;0.000000;0.382684;,
  -0.369093;-0.916732;0.152883;,
  0.273318;-0.699928;-0.659847;,
  -0.273318;-0.699929;-0.659846;,
  -0.659847;-0.699929;-0.273317;,
  -0.659847;-0.699928;0.273318;,
  -0.273317;-0.699928;0.659847;,
  0.273318;-0.699927;0.659848;,
  0.659847;-0.699928;0.273318;,
  0.659847;-0.699928;-0.273318;,
  0.273318;0.699926;-0.659849;,
  -0.152884;0.916731;0.369094;,
  -0.382683;-0.000003;0.923880;,
  -0.152883;-0.916731;0.369094;,
  -0.273318;0.699927;-0.659848;,
  0.152884;0.916731;0.369094;,
  0.382684;-0.000006;0.923879;,
  0.152884;-0.916731;0.369094;,
  -0.659848;0.699927;-0.273318;,
  0.369095;0.916731;0.152884;,
  0.923880;-0.000005;0.382683;,
  0.369094;-0.916731;0.152884;,
  -0.659848;0.699927;0.273318;,
  0.369095;0.916731;-0.152884;,
  0.923879;-0.000004;-0.382684;,
  0.369094;-0.916731;-0.152884;,
  -0.273318;0.699926;0.659849;,
  0.152884;0.916731;-0.369095;,
  0.382683;-0.000004;-0.923880;,
  0.152884;-0.916731;-0.369094;,
  0.273319;0.699926;0.659849;,
  -0.152884;0.916731;-0.369094;,
  -0.382684;-0.000003;-0.923879;,
  -0.152884;-0.916731;-0.369094;,
  0.659849;0.699926;0.273318;,
  -0.369094;0.916731;-0.152884;,
  -0.923880;-0.000002;-0.382683;,
  -0.369094;-0.916731;-0.152884;,
  0.659849;0.699926;-0.273318;,
  -0.369094;0.916731;0.152884;,
  -0.923879;0.000000;0.382684;,
  -0.369093;-0.916732;0.152884;,
  0.273318;0.699926;-0.659849;,
  -0.152884;0.916731;0.369095;,
  -0.382683;-0.000003;0.923880;,
  -0.152883;-0.916732;0.369093;,
  -0.273318;0.699926;-0.659849;,
  0.152884;0.916731;0.369095;,
  0.382684;-0.000006;0.923879;,
  0.152884;-0.916732;0.369093;,
  -0.659849;0.699926;-0.273318;,
  0.369095;0.916731;0.152884;,
  0.923880;-0.000005;0.382683;,
  0.369094;-0.916731;0.152883;,
  -0.659849;0.699926;0.273319;,
  0.369095;0.916731;-0.152884;,
  0.923879;-0.000004;-0.382684;,
  0.369094;-0.916731;-0.152884;,
  -0.273318;0.699926;0.659849;,
  0.152884;0.916731;-0.369096;,
  0.382683;-0.000004;-0.923880;,
  0.152884;-0.916731;-0.369094;,
  0.273319;0.699925;0.659849;,
  -0.152884;0.916731;-0.369095;,
  -0.382684;-0.000003;-0.923879;,
  -0.152884;-0.916732;-0.369093;,
  0.659849;0.699926;0.273318;,
  -0.369095;0.916731;-0.152884;,
  -0.923880;-0.000002;-0.382683;,
  -0.369093;-0.916732;-0.152883;,
  0.659849;0.699926;-0.273319;,
  -0.369095;0.916731;0.152884;,
  -0.369093;-0.916732;0.152883;,
  0.273318;-0.699926;-0.659849;,
  -0.273318;-0.699927;-0.659848;,
  -0.659848;-0.699927;-0.273318;,
  -0.659848;-0.699927;0.273318;,
  -0.273318;-0.699926;0.659849;,
  0.273318;-0.699926;0.659849;,
  0.659849;-0.699926;0.273318;,
  0.659848;-0.699927;-0.273318;,
  0.273318;-0.699927;-0.659849;,
  -0.273318;-0.699927;-0.659848;,
  -0.659848;-0.699927;-0.273318;,
  -0.659848;-0.699927;0.273318;,
  -0.273318;-0.699926;0.659849;,
  0.273318;-0.699926;0.659849;,
  0.659849;-0.699926;0.273318;,
  0.659848;-0.699927;-0.273318;;
  206;
  4;40,40,40,40;,
  4;41,41,41,41;,
  4;17,16,21,22;,
  4;18,17,22,23;,
  4;27,26,31,32;,
  4;28,27,32,33;,
  4;37,36,1,2;,
  4;38,37,2,3;,
  4;7,6,11,12;,
  4;8,7,12,13;,
  4;12,11,16,17;,
  4;13,12,17,18;,
  4;22,21,26,27;,
  4;23,22,27,28;,
  4;32,31,36,37;,
  4;33,32,37,38;,
  4;2,1,6,7;,
  4;3,2,7,8;,
  3;25,35,30;,
  3;0,35,25;,
  3;20,0,25;,
  3;5,0,20;,
  3;20,15,5;,
  3;10,5,15;,
  4;18,23,24,19;,
  4;28,33,34,29;,
  4;38,3,4,39;,
  4;8,13,14,9;,
  4;13,18,19,14;,
  4;23,28,29,24;,
  4;33,38,39,34;,
  4;3,8,9,4;,
  3;14,4,9;,
  3;4,14,19;,
  3;19,39,4;,
  3;19,24,39;,
  3;24,34,39;,
  3;29,34,24;,
  4;21,16,15,20;,
  4;31,26,25,30;,
  4;1,36,35,0;,
  4;11,6,5,10;,
  4;16,11,10,15;,
  4;26,21,20,25;,
  4;36,31,30,35;,
  4;6,1,0,5;,
  4;42,42,46,46;,
  4;43,43,47,47;,
  4;44,44,48,48;,
  4;45,45,49,49;,
  4;74,74,75,75;,
  4;46,46,50,50;,
  4;47,47,51,51;,
  4;48,48,52,52;,
  4;49,49,53,53;,
  4;75,75,76,76;,
  4;50,50,54,54;,
  4;51,51,55,55;,
  4;52,52,56,56;,
  4;53,53,57,57;,
  4;76,76,77,77;,
  4;54,54,58,58;,
  4;55,55,59,59;,
  4;56,56,60,60;,
  4;57,57,61,61;,
  4;77,77,78,78;,
  4;58,58,62,62;,
  4;59,59,63,63;,
  4;60,60,64,64;,
  4;61,61,65,65;,
  4;78,78,79,79;,
  4;62,62,66,66;,
  4;63,63,67,67;,
  4;64,64,68,68;,
  4;65,65,69,69;,
  4;79,79,80,80;,
  4;66,66,70,70;,
  4;67,67,71,71;,
  4;68,68,72,72;,
  4;69,69,73,73;,
  4;80,80,81,81;,
  4;70,70,42,42;,
  4;71,71,43,43;,
  4;72,72,44,44;,
  4;73,73,45,45;,
  4;81,81,74,74;,
  4;42,42,46,46;,
  4;43,43,47,47;,
  4;44,44,48,48;,
  4;45,45,49,49;,
  4;74,74,75,75;,
  4;46,46,50,50;,
  4;47,47,51,51;,
  4;48,48,52,52;,
  4;49,49,53,53;,
  4;75,75,76,76;,
  4;50,50,54,54;,
  4;51,51,55,55;,
  4;52,52,56,56;,
  4;53,53,57,57;,
  4;76,76,77,77;,
  4;54,54,58,58;,
  4;55,55,59,59;,
  4;56,56,60,60;,
  4;57,57,61,61;,
  4;77,77,78,78;,
  4;58,58,62,62;,
  4;59,59,63,63;,
  4;60,60,64,64;,
  4;61,61,65,65;,
  4;78,78,79,79;,
  4;62,62,66,66;,
  4;63,63,67,67;,
  4;64,64,68,68;,
  4;65,65,69,69;,
  4;79,79,80,80;,
  4;66,66,70,70;,
  4;67,67,71,71;,
  4;68,68,72,72;,
  4;69,69,73,73;,
  4;80,80,81,81;,
  4;70,70,42,42;,
  4;71,71,43,43;,
  4;72,72,44,44;,
  4;73,73,45,45;,
  4;81,81,74,74;,
  4;82,82,86,86;,
  4;83,83,87,87;,
  4;84,84,88,88;,
  4;85,85,89,89;,
  4;145,145,146,146;,
  4;86,86,90,90;,
  4;87,87,91,91;,
  4;88,88,92,92;,
  4;89,89,93,93;,
  4;146,146,147,147;,
  4;90,90,94,94;,
  4;91,91,95,95;,
  4;92,92,96,96;,
  4;93,93,97,97;,
  4;147,147,148,148;,
  4;94,94,98,98;,
  4;95,95,99,99;,
  4;96,96,100,100;,
  4;97,97,101,101;,
  4;148,148,149,149;,
  4;98,98,102,102;,
  4;99,99,103,103;,
  4;100,100,104,104;,
  4;101,101,105,105;,
  4;149,149,150,150;,
  4;102,102,106,106;,
  4;103,103,107,107;,
  4;104,104,108,108;,
  4;105,105,109,109;,
  4;150,150,151,151;,
  4;106,106,110,110;,
  4;107,107,111,111;,
  4;108,108,112,112;,
  4;109,109,113,113;,
  4;151,151,152,152;,
  4;110,110,82,82;,
  4;111,111,83,83;,
  4;112,112,84,84;,
  4;113,113,85,85;,
  4;152,152,145,145;,
  4;114,114,118,118;,
  4;115,115,119,119;,
  4;116,116,120,120;,
  4;117,117,121,121;,
  4;153,153,154,154;,
  4;118,118,122,122;,
  4;119,119,123,123;,
  4;120,120,124,124;,
  4;121,121,125,125;,
  4;154,154,155,155;,
  4;122,122,126,126;,
  4;123,123,127,127;,
  4;124,124,128,128;,
  4;125,125,129,129;,
  4;155,155,156,156;,
  4;126,126,130,130;,
  4;127,127,131,131;,
  4;128,128,132,132;,
  4;129,129,133,133;,
  4;156,156,157,157;,
  4;130,130,134,134;,
  4;131,131,135,135;,
  4;132,132,136,136;,
  4;133,133,137,137;,
  4;157,157,158,158;,
  4;134,134,138,138;,
  4;135,135,139,139;,
  4;136,136,140,140;,
  4;137,137,141,141;,
  4;158,158,159,159;,
  4;138,138,142,142;,
  4;139,139,143,143;,
  4;140,140,112,112;,
  4;141,141,144,144;,
  4;159,159,160,160;,
  4;142,142,114,114;,
  4;143,143,115,115;,
  4;112,112,116,116;,
  4;144,144,117,117;,
  4;160,160,153,153;;
 }
 MeshTextureCoords {
  272;
  0.511860;0.276410;,
  0.511860;0.206840;,
  0.436290;0.206840;,
  0.436290;0.276410;,
  0.511860;0.276410;,
  0.436290;0.276410;,
  0.436290;0.206840;,
  0.511860;0.206840;,
  0.117270;0.409040;,
  0.029860;0.394980;,
  0.011670;0.524470;,
  0.106510;0.529900;,
  0.171580;0.415880;,
  0.164080;0.531310;,
  0.110530;0.657940;,
  0.008790;0.667740;,
  0.037430;0.808250;,
  0.131940;0.786540;,
  0.169560;0.651820;,
  0.190530;0.772810;,
  0.165710;0.917170;,
  0.068670;0.936480;,
  0.104330;0.060050;,
  0.192940;0.075420;,
  0.230090;0.895350;,
  0.250300;0.095060;,
  0.162440;0.188920;,
  0.084890;0.170320;,
  0.056310;0.277710;,
  0.137180;0.296270;,
  0.212850;0.202540;,
  0.188350;0.306620;,
  0.447930;0.658440;,
  0.428340;0.669090;,
  0.440330;0.667840;,
  0.419010;0.661510;,
  0.446670;0.646440;,
  0.417770;0.649560;,
  0.437300;0.638890;,
  0.425340;0.640200;,
  0.262650;0.524560;,
  0.260380;0.416040;,
  0.290050;0.754490;,
  0.275560;0.639790;,
  0.322590;0.140340;,
  0.322980;0.857340;,
  0.266930;0.314890;,
  0.283210;0.223730;,
  0.560750;0.584830;,
  0.473610;0.514930;,
  0.502170;0.781150;,
  0.571700;0.695260;,
  0.305660;0.722630;,
  0.391950;0.793130;,
  0.364040;0.527750;,
  0.295110;0.612940;,
  0.000000;0.000000;,
  0.000000;0.200000;,
  0.125000;0.200000;,
  0.125000;0.000000;,
  0.000000;0.400000;,
  0.125000;0.400000;,
  0.000000;0.600000;,
  0.125000;0.600000;,
  0.000000;0.800000;,
  0.125000;0.800000;,
  0.000000;1.000000;,
  0.125000;1.000000;,
  0.250000;0.200000;,
  0.250000;0.000000;,
  0.250000;0.400000;,
  0.250000;0.600000;,
  0.250000;0.800000;,
  0.250000;1.000000;,
  0.375000;0.200000;,
  0.375000;0.000000;,
  0.375000;0.400000;,
  0.375000;0.600000;,
  0.375000;0.800000;,
  0.375000;1.000000;,
  0.500000;0.200000;,
  0.500000;0.000000;,
  0.500000;0.400000;,
  0.500000;0.600000;,
  0.500000;0.800000;,
  0.500000;1.000000;,
  0.625000;0.200000;,
  0.625000;0.000000;,
  0.625000;0.400000;,
  0.625000;0.600000;,
  0.625000;0.800000;,
  0.625000;1.000000;,
  0.750000;0.200000;,
  0.750000;0.000000;,
  0.750000;0.400000;,
  0.750000;0.600000;,
  0.750000;0.800000;,
  0.750000;1.000000;,
  0.875000;0.200000;,
  0.875000;0.000000;,
  0.875000;0.400000;,
  0.875000;0.600000;,
  0.875000;0.800000;,
  0.875000;1.000000;,
  1.000000;0.200000;,
  1.000000;0.000000;,
  1.000000;0.400000;,
  1.000000;0.600000;,
  1.000000;0.800000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  0.000000;0.200000;,
  0.125000;0.200000;,
  0.125000;0.000000;,
  0.000000;0.400000;,
  0.125000;0.400000;,
  0.000000;0.600000;,
  0.125000;0.600000;,
  0.000000;0.800000;,
  0.125000;0.800000;,
  0.000000;1.000000;,
  0.125000;1.000000;,
  0.250000;0.200000;,
  0.250000;0.000000;,
  0.250000;0.400000;,
  0.250000;0.600000;,
  0.250000;0.800000;,
  0.250000;1.000000;,
  0.375000;0.200000;,
  0.375000;0.000000;,
  0.375000;0.400000;,
  0.375000;0.600000;,
  0.375000;0.800000;,
  0.375000;1.000000;,
  0.500000;0.200000;,
  0.500000;0.000000;,
  0.500000;0.400000;,
  0.500000;0.600000;,
  0.500000;0.800000;,
  0.500000;1.000000;,
  0.625000;0.200000;,
  0.625000;0.000000;,
  0.625000;0.400000;,
  0.625000;0.600000;,
  0.625000;0.800000;,
  0.625000;1.000000;,
  0.750000;0.200000;,
  0.750000;0.000000;,
  0.750000;0.400000;,
  0.750000;0.600000;,
  0.750000;0.800000;,
  0.750000;1.000000;,
  0.875000;0.200000;,
  0.875000;0.000000;,
  0.875000;0.400000;,
  0.875000;0.600000;,
  0.875000;0.800000;,
  0.875000;1.000000;,
  1.000000;0.200000;,
  1.000000;0.000000;,
  1.000000;0.400000;,
  1.000000;0.600000;,
  1.000000;0.800000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  0.000000;0.200000;,
  0.125000;0.200000;,
  0.125000;0.000000;,
  0.000000;0.400000;,
  0.125000;0.400000;,
  0.000000;0.600000;,
  0.125000;0.600000;,
  0.000000;0.800000;,
  0.125000;0.800000;,
  0.000000;1.000000;,
  0.125000;1.000000;,
  0.250000;0.200000;,
  0.250000;0.000000;,
  0.250000;0.400000;,
  0.250000;0.600000;,
  0.250000;0.800000;,
  0.250000;1.000000;,
  0.375000;0.200000;,
  0.375000;0.000000;,
  0.375000;0.400000;,
  0.375000;0.600000;,
  0.375000;0.800000;,
  0.375000;1.000000;,
  0.500000;0.200000;,
  0.500000;0.000000;,
  0.500000;0.400000;,
  0.500000;0.600000;,
  0.500000;0.800000;,
  0.500000;1.000000;,
  0.625000;0.200000;,
  0.625000;0.000000;,
  0.625000;0.400000;,
  0.625000;0.600000;,
  0.625000;0.800000;,
  0.625000;1.000000;,
  0.750000;0.200000;,
  0.750000;0.000000;,
  0.750000;0.400000;,
  0.750000;0.600000;,
  0.750000;0.800000;,
  0.750000;1.000000;,
  0.875000;0.200000;,
  0.875000;0.000000;,
  0.875000;0.400000;,
  0.875000;0.600000;,
  0.875000;0.800000;,
  0.875000;1.000000;,
  1.000000;0.200000;,
  1.000000;0.000000;,
  1.000000;0.400000;,
  1.000000;0.600000;,
  1.000000;0.800000;,
  1.000000;1.000000;,
  0.000000;0.000000;,
  0.000000;0.200000;,
  0.125000;0.200000;,
  0.125000;0.000000;,
  0.000000;0.400000;,
  0.125000;0.400000;,
  0.000000;0.600000;,
  0.125000;0.600000;,
  0.000000;0.800000;,
  0.125000;0.800000;,
  0.000000;1.000000;,
  0.125000;1.000000;,
  0.250000;0.200000;,
  0.250000;0.000000;,
  0.250000;0.400000;,
  0.250000;0.600000;,
  0.250000;0.800000;,
  0.250000;1.000000;,
  0.375000;0.200000;,
  0.375000;0.000000;,
  0.375000;0.400000;,
  0.375000;0.600000;,
  0.375000;0.800000;,
  0.375000;1.000000;,
  0.500000;0.200000;,
  0.500000;0.000000;,
  0.500000;0.400000;,
  0.500000;0.600000;,
  0.500000;0.800000;,
  0.500000;1.000000;,
  0.625000;0.200000;,
  0.625000;0.000000;,
  0.625000;0.400000;,
  0.625000;0.600000;,
  0.625000;0.800000;,
  0.625000;1.000000;,
  0.750000;0.200000;,
  0.750000;0.000000;,
  0.750000;0.400000;,
  0.750000;0.600000;,
  0.750000;0.800000;,
  0.750000;1.000000;,
  0.875000;0.200000;,
  0.875000;0.000000;,
  0.875000;0.400000;,
  0.875000;0.600000;,
  0.875000;0.800000;,
  0.875000;1.000000;,
  1.000000;0.200000;,
  1.000000;0.000000;,
  1.000000;0.400000;,
  1.000000;0.600000;,
  1.000000;0.800000;,
  1.000000;1.000000;;
 }
}
