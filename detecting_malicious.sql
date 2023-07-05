# HeidiSQL Dump 
#
# --------------------------------------------------------
# Host:                 127.0.0.1
# Database:             detecting_malicious
# Server version:       5.0.18-nt
# Server OS:            Win32
# Target-Compatibility: Standard ANSI SQL
# HeidiSQL version:     3.1 RC1 Revision: 1064
# --------------------------------------------------------

/*!40100 SET CHARACTER SET latin1;*/
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ANSI';*/
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;*/


#
# Database structure for database 'detecting_malicious'
#

CREATE DATABASE /*!32312 IF NOT EXISTS*/ "detecting_malicious" /*!40100 DEFAULT CHARACTER SET latin1 */;

USE "detecting_malicious";


#
# Table structure for table 'agent'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "agent" (
  "id" int(11) NOT NULL auto_increment,
  "username" text,
  "password" text,
  PRIMARY KEY  ("id")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'agent'
#

/*!40000 ALTER TABLE "agent" DISABLE KEYS;*/
LOCK TABLES "agent" WRITE;
REPLACE INTO "agent" ("id", "username", "password") VALUES
	(1,'OSN','OSN');
UNLOCK TABLES;
/*!40000 ALTER TABLE "agent" ENABLE KEYS;*/


#
# Table structure for table 'behavior'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "behavior" (
  "id" int(11) NOT NULL auto_increment,
  "username" text,
  "type" text,
  "words" text,
  "total" text,
  PRIMARY KEY  ("id")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'behavior'
#

/*!40000 ALTER TABLE "behavior" DISABLE KEYS;*/
LOCK TABLES "behavior" WRITE;
REPLACE INTO "behavior" ("id", "username", "type", "words", "total") VALUES
	(1,'Roshan','sexy','[booms]','1');
REPLACE INTO "behavior" ("id", "username", "type", "words", "total") VALUES
	(2,'Niranjan','brutality','[kill, bomb, kidnap]','3');
REPLACE INTO "behavior" ("id", "username", "type", "words", "total") VALUES
	(3,'Niranjan','sexy','[fuck]','1');
REPLACE INTO "behavior" ("id", "username", "type", "words", "total") VALUES
	(4,'Kishore','sexy','[booms]','1');
REPLACE INTO "behavior" ("id", "username", "type", "words", "total") VALUES
	(5,'Kishore','detestation','[hate, hate]','2');
REPLACE INTO "behavior" ("id", "username", "type", "words", "total") VALUES
	(6,'Roshan','detestation','[hate]','1');
REPLACE INTO "behavior" ("id", "username", "type", "words", "total") VALUES
	(7,'Manjunath','sexy','[booms, fuck]','2');
REPLACE INTO "behavior" ("id", "username", "type", "words", "total") VALUES
	(8,'Manjunath','brutality','[kill]','1');
UNLOCK TABLES;
/*!40000 ALTER TABLE "behavior" ENABLE KEYS;*/


#
# Table structure for table 'comments'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "comments" (
  "id" int(11) NOT NULL auto_increment,
  "sender" text,
  "title" text,
  "commented_user" text,
  "comment" text,
  "dt" text,
  PRIMARY KEY  ("id")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'comments'
#

/*!40000 ALTER TABLE "comments" DISABLE KEYS;*/
LOCK TABLES "comments" WRITE;
REPLACE INTO "comments" ("id", "sender", "title", "commented_user", "comment", "dt") VALUES
	(1,'Niranjan','Kabir_Singh','Roshan','Nothing is there in this film.Only Booms.','25/07/2019   18:40:36');
REPLACE INTO "comments" ("id", "sender", "title", "commented_user", "comment", "dt") VALUES
	(2,'Kishore','2019_WC_Cricket','Niranjan','I will Kill you if u post like this post...','26/07/2019   16:20:46');
REPLACE INTO "comments" ("id", "sender", "title", "commented_user", "comment", "dt") VALUES
	(3,'Roshan','Samsung_S7','Niranjan','Samsung Company will  Fuck you without warranty.','26/07/2019   16:26:41');
REPLACE INTO "comments" ("id", "sender", "title", "commented_user", "comment", "dt") VALUES
	(4,'Kishore','2019_WC_Cricket','Niranjan','Pakistan might have put Bomb on this tournament.','26/07/2019   16:33:14');
REPLACE INTO "comments" ("id", "sender", "title", "commented_user", "comment", "dt") VALUES
	(5,'Niranjan','Kabir_Singh','Kishore','I Hate this film..Nothing is there.Only Booms.','26/07/2019   16:39:40');
REPLACE INTO "comments" ("id", "sender", "title", "commented_user", "comment", "dt") VALUES
	(6,'Niranjan','Kabir_Singh','Kishore','I Hate this film.','26/07/2019   16:40:17');
REPLACE INTO "comments" ("id", "sender", "title", "commented_user", "comment", "dt") VALUES
	(7,'Niranjan','Kabir_Singh','Roshan','I hate this film.','26/07/2019   16:43:20');
REPLACE INTO "comments" ("id", "sender", "title", "commented_user", "comment", "dt") VALUES
	(8,'Manjunath','Rolls_Royce','Niranjan','I will Kidnap this car since i cant purchase.','26/07/2019   17:26:34');
REPLACE INTO "comments" ("id", "sender", "title", "commented_user", "comment", "dt") VALUES
	(9,'Niranjan','Kabir_Singh','Manjunath','Nothing is there.Only Big Booms.','26/07/2019   17:27:39');
REPLACE INTO "comments" ("id", "sender", "title", "commented_user", "comment", "dt") VALUES
	(10,'Roshan','Samsung_S7','Manjunath','This is not good mobile..I will Kill you if u post this mobile','26/07/2019   17:28:22');
REPLACE INTO "comments" ("id", "sender", "title", "commented_user", "comment", "dt") VALUES
	(11,'Kishore','2019_WC_Cricket','Manjunath','England Team fuck us in semi final','26/07/2019   17:28:48');
UNLOCK TABLES;
/*!40000 ALTER TABLE "comments" ENABLE KEYS;*/


#
# Table structure for table 'friends'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "friends" (
  "id" int(11) NOT NULL auto_increment,
  "rfrom" text,
  "rto" text,
  "status" text,
  "dt" text,
  PRIMARY KEY  ("id")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'friends'
#

/*!40000 ALTER TABLE "friends" DISABLE KEYS;*/
LOCK TABLES "friends" WRITE;
REPLACE INTO "friends" ("id", "rfrom", "rto", "status", "dt") VALUES
	(1,'Roshan','Niranjan','Accepted','25/07/2019   18:38:50');
REPLACE INTO "friends" ("id", "rfrom", "rto", "status", "dt") VALUES
	(2,'Kishore','Niranjan','Accepted','26/07/2019   15:56:56');
REPLACE INTO "friends" ("id", "rfrom", "rto", "status", "dt") VALUES
	(3,'Manjunath','Niranjan','Accepted','26/07/2019   17:21:39');
REPLACE INTO "friends" ("id", "rfrom", "rto", "status", "dt") VALUES
	(4,'Manjunath','Roshan','Accepted','26/07/2019   17:21:53');
REPLACE INTO "friends" ("id", "rfrom", "rto", "status", "dt") VALUES
	(5,'Manjunath','Kishore','Accepted','26/07/2019   17:22:03');
UNLOCK TABLES;
/*!40000 ALTER TABLE "friends" ENABLE KEYS;*/


#
# Table structure for table 'login_history'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "login_history" (
  "id" int(11) NOT NULL auto_increment,
  "username" text,
  "login_dt" text,
  "logout_dt" text,
  PRIMARY KEY  ("id")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'login_history'
#

# (No data found.)



#
# Table structure for table 'negative'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "negative" (
  "id" int(11) NOT NULL auto_increment,
  "type" text,
  "word" text,
  "dt" text,
  PRIMARY KEY  ("id")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'negative'
#

/*!40000 ALTER TABLE "negative" DISABLE KEYS;*/
LOCK TABLES "negative" WRITE;
REPLACE INTO "negative" ("id", "type", "word", "dt") VALUES
	(1,'sexy','Booms','25/07/2019   18:25:33');
REPLACE INTO "negative" ("id", "type", "word", "dt") VALUES
	(2,'brutality','Kill','26/07/2019   16:07:18');
REPLACE INTO "negative" ("id", "type", "word", "dt") VALUES
	(3,'brutality','Bomb','26/07/2019   16:07:27');
REPLACE INTO "negative" ("id", "type", "word", "dt") VALUES
	(4,'sexy','Fuck','26/07/2019   16:07:40');
REPLACE INTO "negative" ("id", "type", "word", "dt") VALUES
	(5,'detestation','Hate','26/07/2019   16:08:11');
REPLACE INTO "negative" ("id", "type", "word", "dt") VALUES
	(6,'detestation','Shameful ','26/07/2019   16:08:49');
REPLACE INTO "negative" ("id", "type", "word", "dt") VALUES
	(7,'brutality','Kidnap','26/07/2019   17:26:09');
UNLOCK TABLES;
/*!40000 ALTER TABLE "negative" ENABLE KEYS;*/


#
# Table structure for table 'posts'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "posts" (
  "id" int(11) NOT NULL auto_increment,
  "sender" text,
  "img_title" text,
  "image" blob,
  "description" text,
  "message" text,
  "dt" text,
  "cmt" text,
  PRIMARY KEY  ("id")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'posts'
#

# (No data found.)



#
# Table structure for table 'query'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "query" (
  "id" int(11) NOT NULL auto_increment,
  "sender" text,
  "msg" text,
  "dt1" text,
  "reply" text,
  "dt2" text,
  PRIMARY KEY  ("id")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'query'
#

# (No data found.)



#
# Table structure for table 'user'
#

CREATE TABLE /*!32312 IF NOT EXISTS*/ "user" (
  "id" int(11) NOT NULL auto_increment,
  "type" text,
  "username" text,
  "password" text,
  "email" text,
  "mobile" text,
  "dob" text,
  "gender" text,
  "address" text,
  "pincode" text,
  "status" text,
  "image" blob,
  PRIMARY KEY  ("id")
) /*!40100 DEFAULT CHARSET=latin1*/;



#
# Dumping data for table 'user'
#

/*!40000 ALTER TABLE "user" DISABLE KEYS;*/
LOCK TABLES "user" WRITE;
REPLACE INTO "user" ("id", "type", "username", "password", "email", "mobile", "dob", "gender", "address", "pincode", "status", "image") VALUES
	(1,'Music','Niranjan','Niranjan','Niranjan.123@gmail.com','9535866270','05/06/1987','MALE','#7827,4th Cross,Rajajiangar,Bangalore','560021','Authorized','���� JFIF  ` `  �� C 		



	
�� �   } !1AQa"q2���#B��R��$3br�	
%&''()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������        	
�� �  w !1AQaq"2�B����	#3R�br�
$4�%�&''()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������   ? ����( �O1�)
X��J}r�[�~&>�X��ӧ��ǀ�2�Y�ۜn�**O�V��˧i(��v1~6��~�l]Ԕ^ȅ�����̼vPF??�|��s�
��O�$>��ÖdW�	��z�F� O�^�������/���%��T��Wc4r��n%��q� ��sZ_Hv�>���;9��ei8R~�=����~��pV��U{Iw{|�_��3�˫x�R�f����C�Z]\4�}d/�\���n<d�-��?�J�`��� �{� H-��|E|�S�rwl��9r�J)%�z]ώBU� �?�Y��,�)�f�y���Ъ@o�~��O���3���k��9�������K��0yU����5�j�>l��) �8#�W��?U�7s���uO4�B1''?ު�"O������cǩ)>aG^��=����A�+� 4���8Mo��Ww�[7˥�r���/�9ܣ�X`f�N��d��G�
�o5�d����<�z���kҒ�)������`�V��h������K�k�?�kU��ߌ!��''���R\�4�M������0�y5�s����_�d����G"�I u�	Xo���3Ӿk�T� �]�������<�K���bKVӵxղR���2�A��D�v/''����x��=K��qWO���?%���寅V�������O�������B�(��(�����C���jJ�����)�ғW���V?��_� �z~�ھ��%��>!K.����&��qm �
���.�^��?����N����o���\Z���hX�����c<W��c��
�$a��UU��ӊ���(cgQ�5m
_m��J��|/�i̛�&t1\��,1��?C��)���z��q"��
���� q�
(��Q@T�oƗ��ܲ�D�c8���X���w���0�|¹��:��&� l5>zЃ���O�,�$���YX�$�df�brO�[zz�m��x��}��ҦW#�W�
ݰ� `z��X:�����S��T,�R:==P���q����[�w���8���뗲��A�kk� #�ƾ���>c���Izf�#�e�fjwB7�$T�L��j��ؓ98��F..:tp��b���N�@���a�k
����A���`֭���k��� ''���|�>���>���?�7���_��ȱ�啽��9q5�2��(�ڿ�u���H0(S�|�ך�}� ���w����K�o[Dw2,��1��U���@����H�u=^������?�v�Ú5**���ʲ��ثqxy�A�k���7��_�+��ď.���s� Ү��"�0��މw-���ō�k�ญ��>�`�ҿA�׏�Lo5��Im�)���0\�SM4�{F�?����d�G,];wO���lBXZ��VD������� 8����$��)���?,H(��c
(��
���f���5h#�-��G�
H�1[T˄DT�Cpk*��Jr���k��ҍGN�j.�?���N��� � �� �[Vs� ���2_	��P��R�o3>FbT�X��[K��q�z�m��B��=��Z?���t�V�jCf���U���-�r���ֹ�k�($�èmZ��c-��+ant
g��>�?Lk�KUf���6Ƶ�Aϛqe��	��}����~���м������ym"qs)�H�${j�}SR��$s������������XW�a���>��_�ԩjkE�8xS���g��W�v?�9����ou�X��~�������_q��_ WJ�U�S�|�γx�Q���de�4vљh�i�?C�|)� ��/<}�Ax;�:]����qCki>e��*C/�M*ȣ��_�_�L��&����|��ْ[�#O7Z��ȸ�.dk���pg�@��y�~���w;V�E����N!B.�^��=�w��+���(��(��&02q��ө''�Nh`x_�u��Q-�Ik�m�ɼ*1��>�����杮$Ȥ��s�GP}=�k��OM�R����4���2H�2�9�<���~�৉G�$���X��e\q� ,���px�~G�<7(�y�i/�.�k�>����FT�_Y�5�z���5U�  �5j=P0��^���NI`@��}}�Z�x�1����cVkC�]3��{�������sK�$�$��.|F�<�g֛�6J�t:� 䁏z����X�dZ���L���}k��|X�b@''����T�;\�x�> �"�6N}k���_�	
�����F�@�hHn5���[��%��.��?g�C���Ņ��''G��H���@�,3�dw���%9�44����W� ��|����� �7�c?nO�+���6k1��6�)|�O�Ԯ�5}V�6	���3�18�S����m�.Xs�@03���\?���?xk�^�C��''�v�k�h��c̷S���V�)e��ٻ����+�*���F��%S���V���(���<(�� (�� ('' �J++������N���{`�Ox�
r_��,��h��~ɞNgĹF^���E>��?�7g�W������3Ap��%Cc�L��g��[�?ൟ �1���?[֬�-{�cL��6Q7L�:#q�Ԑ5�����������MWX�N�䓋<�0��0q�8''�ǵx��e�8�G���z�@�ο�8��[-o�b=�/��N�<�wg�E''՟�qo���>
����o_�uio[�$\��U��4;]KJ��Դ�؄�\�N�E:�����9�(�.� #9�k����?�`� Z�����׃^m����6��#q������$I~�~����� �������E�TҮq�.9�d��a���<�ɿ|����Ėݔ�F�;��.��b�φK���E69D����}x�i��I��QE�(�� *�Μ%�c�{b��ר�y�$��s�ݨF�����ڷJ��
B�H�&��Fҫ��a�X�3�]�� ��sXx�Gҵ�''R��h�Q0?�C�#���]uĊEf�]�F������U	�R��]V��Mj|k�y~ȟ?goًƾ:��l
s�A��@9�r}*�Ѳ+fF`FG^F���''�Z䭗B�%N�T�%f������jkD�%(�4P_�O������k?�x�+�6�kZL�U�2Q�R��#�nS��=�HL�p0A=}���� �U��z��''�Xh������u�o���.{W 	��$���>�׀�_�D��U����h�-�bY���X�pG5������G�5.�宱o�[�4~��f[�w�GG��]��+�`(�M7������Ct�@!�s��󎽿/^٠	(��tV�#��Ow�2hI�ɪ�^Tcދ���?Z̞�k� �����Oz̻��g!B�blΛq�9�k:��r(PKw������\�Y� ��|Z�_��暷ko	h��R(U$��/���>���}���/���d�i߈>"w.���"�6C �Ƥ{���&�vFq_�|5���S��l���d���� ~=�V����;�,��"�\L=;�M.�sT�''�ײr&HҪO ���~�V���h���YA<��q"�8��~�VYBB�hh����%I��u��wS�~Y�u�_�����X�~ҟ�>���צ��
��k�h?4O�4��+G#��������J$���%%�21�Wf4剧��rWok__�Ƴ��.Uwgo[�2��QY����=Y������rk�+��"����SE���ʴz�@c}ཹ��� �/~��<?��M~��� ��%����i� �q� 3��m� �/��*\O��SM�#8��-� ���o�W��m��sq�����Ҷto�!���ǌ>ie�?g���o�a��k
�ô�包���Je�$��H�=?;�:�˺�=8''�ک�J껊���n|��U�W�O� M��î�O��@2�K҅�������8��� �5|��5-7[�-��:��Ԭ{H�هZ��o��;A~�s�� �~2���B���%W�W?����+X!�{��"�%2<��q��W��#� �p�c��b�O�}ޕa!��5�l!��T�)�C_�_g����X�+��
�7�i��+�!R�ӫ�����ʆr3��x>���`���f�8b&�r�:���3�����c
��Sϩ5�qp�
��999�����Pk;������`�ֿ#θ�3ͧ�3
ҟ��^�Z#�p�
h�т_��~�B�ĤHF@��OG����,n#8I�IG9�+�;�� ೞ''����Jo���,V[ojpv��Eq�ƿ�_��U
��S�H��$�Gw�����#$��0 �f\^�$���y���l`�� ��ۻ��<Є��/.�Bd*�#�<��Q��
��-&�h�s�|��V?�v׿�� ��$Zl���e��P�_�q@''����� 8��Ϗ�����y��!�0Fr:�� �޿�o��o�<�i�Ɵc�iZ�F����������G�7?�W�� ����_x�����wgy�/r��R��-d''1���PˌǗ�$pZc���k_�?�φ^"�K����2�*c�2��q�={��ė �2@�4 �30�H����i(�.ORk��
��1׭4�|B�Z�o�''-�L��y (�H�ס~ğ����oP��Ĩ��|5IL�>
YB��_P1���qg�m�f��M�"��@�?d����Ŕ:�I��y�q�#����h��oa��mcei�"�V8� �0{ ���Ě�z\�7!�q����emW^[����)c�Ős��"�� ����o�[�W1���x�?�� �g�	����
<g�J]/S���c�e��]��� 0~Ϛ�����U�ҡf_��3�օ���uzK��˻�MŎ==3_k?�r��l�m���FJ����� ���s�«;i�B���Zt8E�6vQ?�J�� |b?H�>[;� ;��~x�ٮ��H����?����~V�� �y>2��a���i1\7��:��/�3?��s�1���?i����� G����$�<7�}���16�������?�G���U�,��K�o���e���Q5��
w�� :�ÿ��<��$�O���
REPLACE INTO "user" ("id", "type", "username", "password", "email", "mobile", "dob", "gender", "address", "pincode", "status", "image") VALUES
	(2,'Music','Roshan','Roshan','Roshan.123@gmail.com','9535866270','05/06/1987','MALE','#23,4th Cross,Rajaji nagar,Bangalore','560021','Authorized','���� JFIF  ` `  �� C 	


...................................................��  h h" ��           	
�� �   } !1AQa"q2���#B��R��$3br�	
%&''()*456789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz���������������������������������������������������������������������������        	
�� �  w !1AQaq"2�B����	#3R�br�
$4�%�&''()*56789:CDEFGHIJSTUVWXYZcdefghijstuvwxyz��������������������������������������������������������������������������   ? �''ߧ� Z�{~��j~�o�� �F�o�� �@�c��� �Q�o�� �O��������V��O;�qƥ�� (�I �!z��� �\�ߍtg��������c��%�~�W>��1�{{,��''��	G��ZH�F{ �G''�T�!����Q�on�JT{ (��tDy�^�=��� NkKE񆁬ܛKA�FL#G&=���W�j�$,O�r�:���Xgh��ed��4���� ֥Ƿ�� ֯��|Sn�4W����-gq��;�r(of>���lu�*�S���-�]�J��#Az� �Ƿ�� ֣ߧ� Z����� �Q���� �P1��������?��P�K�z3�@	���?����g��R���g ��� ��3�5��~S�oJ�����������E��/���� ��x��*��F  t�jZ�9?=s���?5d�̳>��� m�j���U[id��09��U��?[���u��Kt�n��"S�r7��z k��w��<��-��re���i���H�N8<�Զ��s�okZ̀�0k��j�?k:X�yI��Y���l��V5�<�E� �5u�ٮ,.	�%�1��`8zu#����N� #��2P��x��К���#*)��2{zS��LBQK�z(3�hϹ���;썛''�yW�_�-Ү����YA4��,�v�\��A*:��+�o����\C�G�f�A''�5͊���ӆ�e&��O��x�]���4�-��e�k��Uea�p��Oj��	���).����ct	��el�@��>I,|9���T�mg/��nT ����Z=�a��4F����h���vƼ��cՏ�ɭ?5}�3��}�ޏn��2���kxWQ�� H��C� ,�_�� ~�?�)c�����-F�dg2���q�@��S�½Fi��J��ڸ�%Ӽ?�i2��Ž�0� ��RG���U�(�kJ�Wr��K)|���V3�j���-QO\U��8EϹ��� u&�hϿ�� ת�אYZ�sq2�J]ݏ
 �''�@Iq<0��,���,�� =O=+��Iym~I��:g
*�]cRK[C���� *�ON� �V�o
REPLACE INTO "user" ("id", "type", "username", "password", "email", "mobile", "dob", "gender", "address", "pincode", "status", "image") VALUES
	(3,'Music','Kishore','Kishore','Kishore.123@gmail.com','9535866270','05/06/1987','MALE','#787,4th Cross,Rajajiangar,Bangalore','560021','Authorized','���� JFIF   d d  �� Ducky     P  �� Adobe d�   �� � 		

				
         	
 s !1AQa"q�2���B#�R��3b�$r��%C4S���cs�5D''���6Tdt���&�	
��EF��V�U(�������eu��������fv��������7GWgw��������8HXhx��������)9IYiy��������*:JZjz�������� m !1AQa"q��2������#BRbr�3$4C��S%�c��s�5�D�T�	
&6E''dtU7��()��󄔤�����eu��������FVfv��������GWgw��������8HXhx��������9IYiy��������*:JZjz����������   ? �{���!��G�L�گ�ϑu]WU�/�o5=N�˺l�7��,�J��݉ff$�jsG��,0&��w=j����юi�''  ��#���''�q� �� ,W���W��fG�p2?!���o��O���m��� �!� �+���i_�O��p2?!���c[����<�Z�������-�ߑߗ0���%��ykIDDQVfv�  I8�G�#���5���?����^�w����CQ:��Ѷ�7�oi���$�b�[i]�v<A���?�����_�}w��O���oE���w��澈�d��������ms{�y{J�Йw1O�Dԡ��� ��?������� ,k������f���V��?��Li�O��8?���H�X�� ��� O/֢ߑ_��� (G���_����̏�~��X���� O/֫m��=�Dߑ?�aZ�#�]v� �>��� 2?!������ W���_���W�8���W����Hȯ�מX� �U�z���T}����� �� �����)�3)ּs����� 󏟗��W�V��N��7H��Iw�_��Z��R�ffbQY�L	�/�������������X~[�մҼ���L�M�1�(�K�>�p=JI; ��F3.�#D����e����z����|o;8��������(h��B+���N�w�3�ؼ�No�&sʾo6м����{���<��ו��"E��ִ�m���/V6���X1Vm�_��qe�ه�o�ÿ��
]��)n,HX�4�Rv�Ö q@����6o''S�&Ip���GN�''�u� �o�������9�kg��^R�Ǜm<�y�S���-.���''H�,^��eD�Ҧ�6���92q�Ds���X��#�{߸R�1f''v�''盓��Ei&��&� ���K��7~�U��� ?"��^yc��V��:�!�Q��;c�w?�2����o�N�⿘^K�������/-��%��nG�X��z��^� ⇋隍^���%t����`���tn���^��cj��wP���G��Ha2=@\8�F۝�9���(m��r>o/�5K?˻;�<�����0[�IKC�;�
�D偓�0�c\�qx`��fmDr����|��j^\�HX+��%�ỉcY��y�w�VR�Z��	|��Dd�h��� �\��
�SB 
��b��s0���d7�ߏ���"@N�y������X�x�$� �!p�\0$��E:e�8Hعxu�X�� ���?�v�z��>��c}S��5êSU��%�9iV�6{�U�ŏ»˳t�ɖ��;�_Oǹ�vƶc
�� �!�Q��{b� =��?�E�-���=~g��y��''Κ����YM���䗆�"�co�J$�̷^^�� 8�� 9 �󏿟�Q���rc���y_��F����ɢ�� C�H�v��(�xdx�O��~D�|�c�m�,��in`���rI�X����)��$�e����X6�S����C����h���m�''��#��;1����^b>W�����<�.W˲3��P���G�FMZQ�d���OA������w�w�=0�����}���>Q� ��hZ_������ ��n�֧��}J}o{{�������=6
E� 9�� 8�� 9� 9�Oȷ�/��3kZ#�Z�������Z����)%�ڬ��G")G�N���ܼ䈭��m� >�� ��t
)�����;�O��Q��_�AJ��kr�Q���A5� ��U�o��o��7�����?��zv������$��S�z]��]�.
REPLACE INTO "user" ("id", "type", "username", "password", "email", "mobile", "dob", "gender", "address", "pincode", "status", "image") VALUES
	(4,'Music','Manjunath','Manjunath','tmksmanju13@gmail.com','9535866270','05/06/1987','MALE','#45,4th Cross,rajajiangar,Bangalore','560021','Authorized','�PNG

   
�`���2F�/�P�+6���#�c�W�!��Q�6O�HQ�g$��M��,mc���A�W�B:+��bK�D}��96lZ�M~SZ� �RBVZ�v�$�(��Y)��s�����h�[�����M{].T1��#9oX��rT��rH��	�D/�<�/ά�&�"c֒Fpw~�$''W�7	R�Rv03l9���L,�w
\I�sQ���1���.�,��ٍz^��g8z�<x^���Y�Rv����,�\V9��>r�f�u�����c�,6B*͢�YO0�栜?��{��<�7��X<s����c���;�g��N%����\�>�`�W
UNLOCK TABLES;
/*!40000 ALTER TABLE "user" ENABLE KEYS;*/
/*!40101 SET SQL_MODE=@OLD_SQL_MODE;*/
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;*/