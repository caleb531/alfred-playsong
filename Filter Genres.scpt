FasdUAS 1.101.10   ��   ��    k             l     ��  ��    . (-- Filter genres by the typed query ----     � 	 	 P - -   F i l t e r   g e n r e s   b y   t h e   t y p e d   q u e r y   - - - -   
  
 l     ��������  ��  ��        l     ��  ��    "  load workflow configuration     �   8   l o a d   w o r k f l o w   c o n f i g u r a t i o n      l     ����  r         I    �� ��
�� .sysoloadscpt        file  4     �� 
�� 
psxf  l    ����  b        l   	 ����  c    	    l    ����  I   �� ��
�� .sysoexecTEXT���     TEXT  m         � ! !  p w d��  ��  ��    m    ��
�� 
ctxt��  ��    m   	 
 " " � # # & / C o n f i g u r a t i o n . s c p t��  ��  ��    o      ���� 
0 config  ��  ��     $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   ( ) # get song result list as XML string    ) � * * F   g e t   s o n g   r e s u l t   l i s t   a s   X M L   s t r i n g '  + , + i      - . - I      �� /���� $0 getresultlistxml getResultListXml /  0�� 0 o      ���� 	0 query  ��  ��   . k    7 1 1  2 3 2 p       4 4 ������ 
0 config  ��   3  5 6 5 l     ��������  ��  ��   6  7 8 7 l     �� 9 :��   9 0 * search iTunes library for the given query    : � ; ; T   s e a r c h   i T u n e s   l i b r a r y   f o r   t h e   g i v e n   q u e r y 8  < = < O    2 > ? > k   1 @ @  A B A l   ��������  ��  ��   B  C D C l   �� E F��   E 5 / search Music playlist for songs matching query    F � G G ^   s e a r c h   M u s i c   p l a y l i s t   f o r   s o n g s   m a t c h i n g   q u e r y D  H I H r      J K J l    L���� L e     M M 6    N O N n    
 P Q P 2    
��
�� 
cTrk Q 4    �� R
�� 
cPly R m    ����  O F     S T S E     U V U 1    ��
�� 
pGen V o    ���� 	0 query   T >    W X W 1    ��
�� 
pKnd X m     Y Y � Z Z  P D F   D o c u m e n t��  ��   K o      ���� 0 allsongs allSongs I  [ \ [ r   ! % ] ^ ] J   ! #����   ^ o      ���� 0 	thegenres 	theGenres \  _ ` _ r   & ) a b a m   & '����  b o      ���� 0 	songindex 	songIndex `  c d c l  * *��������  ��  ��   d  e f e l  * *�� g h��   g - ' retrieve list of genres matching query    h � i i N   r e t r i e v e   l i s t   o f   g e n r e s   m a t c h i n g   q u e r y f  j k j X   * a l�� m l k   : \ n n  o p o l  : :�� q r��   q   limit number of results    r � s s 0   l i m i t   n u m b e r   o f   r e s u l t s p  t u t Z  : G v w���� v ?  : ? x y x o   : ;���� 0 	songindex 	songIndex y l  ; > z���� z n   ; > { | { o   < >���� 0 	songlimit 	songLimit | o   ; <���� 
0 config  ��  ��   w  S   B C��  ��   u  } ~ } l  H H��  ���    / ) add genre to list if not already present    � � � � R   a d d   g e n r e   t o   l i s t   i f   n o t   a l r e a d y   p r e s e n t ~  ��� � Z   H \ � ����� � H   H N � � E  H M � � � o   H I���� 0 	thegenres 	theGenres � n   I L � � � 1   J L��
�� 
pGen � o   I J���� 0 thesong theSong � r   Q X � � � b   Q V � � � o   Q R���� 0 	thegenres 	theGenres � l  R U ����� � n   R U � � � 1   S U��
�� 
pGen � o   R S���� 0 thesong theSong��  ��   � o      ���� 0 	thegenres 	theGenres��  ��  ��  �� 0 thesong theSong m o   - .���� 0 allsongs allSongs k  � � � l  b b��������  ��  ��   �  � � � l  b b�� � ���   �    create initial XML string    � � � � 4   c r e a t e   i n i t i a l   X M L   s t r i n g �  � � � r   b i � � � n   b g � � � I   c g�������� "0 createxmlheader createXmlHeader��  ��   � o   b c���� 
0 config   � o      ���� 0 xml   �  � � � l  j j��������  ��  ��   �  � � � l  j j�� � ���   � R L inform user that no results were found (prompt to switch to iTunes instead)    � � � � �   i n f o r m   u s e r   t h a t   n o   r e s u l t s   w e r e   f o u n d   ( p r o m p t   t o   s w i t c h   t o   i T u n e s   i n s t e a d ) �  � � � Z   j% � ��� � � =  j o � � � n   j m � � � 1   k m��
�� 
leng � o   j k���� 0 allsongs allSongs � m   m n����   � k   r � � �  � � � l  r r��������  ��  ��   �  � � � r   r � � � � b   r � � � � o   r s���� 0 xml   � n   s � � � � I   t ��� ����� 0 createxmlitem createXmlItem �  � � � m   t u � � � � �  n o - r e s u l t s �  � � � m   u v � � � � �  n u l l �  � � � m   v y � � � � �  n o �  � � � m   y | � � � � �  N o t   F o u n d �  � � � l  | � ����� � b   | � � � � b   | � � � � m   |  � � � � � & N o   s o n g s   m a t c h i n g   ' � o    ����� 	0 query   � m   � � � � � � �  '��  ��   �  ��� � n   � � � � � o   � ����� "0 defaulticonname defaultIconName � o   � ����� 
0 config  ��  ��   � o   s t���� 
0 config   � o      ���� 0 xml   �  ��� � l  � ���������  ��  ��  ��  ��   � k   �% � �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � m   � �����  � o      ���� 0 	songindex 	songIndex �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � 6 0 loop through the results to create the XML data    � � � � `   l o o p   t h r o u g h   t h e   r e s u l t s   t o   c r e a t e   t h e   X M L   d a t a �  � � � X   �# ��� � � k   � � �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � c   � � � � � o   � ����� 0 	genrename 	genreName � m   � ��
� 
ctxt � o      �~�~ 0 	genrename 	genreName �  � � � r   � � � � � l  � � ��}�| � 6  � � � � � 4  � ��{ �
�{ 
cTrk � m   � ��z�z  � F   � � � � � =  � � � � � 1   � ��y
�y 
pGen � o   � ��x�x 0 	genrename 	genreName � >  � �   1   � ��w
�w 
pKnd m   � � �  P D F   D o c u m e n t�}  �|   � o      �v�v 0 thesong theSong �  l  � ��u�t�s�u  �t  �s    l  � ��r	�r     limit number of results   	 �

 0   l i m i t   n u m b e r   o f   r e s u l t s  Z  � ��q�p ?  � � o   � ��o�o 0 	songindex 	songIndex l  � ��n�m n   � � o   � ��l�l 0 	songlimit 	songLimit o   � ��k�k 
0 config  �n  �m    S   � ��q  �p    l  � ��j�i�h�j  �i  �h    l  � ��g�g   , & exclude digital booklets from results    � L   e x c l u d e   d i g i t a l   b o o k l e t s   f r o m   r e s u l t s  Z   ��f�e >  � �  n   � �!"! 1   � ��d
�d 
pKnd" o   � ��c�c 0 thesong theSong  m   � �## �$$  P D F   D o c u m e n t k   �%% &'& l  � ��b�a�`�b  �a  �`  ' ()( r   � �*+* n   � �,-, I   � ��_.�^�_ (0 getsongartworkpath getSongArtworkPath. /0/ o   � ��]�] 0 thesong theSong0 121 n   � �343 1   � ��\
�\ 
pGen4 o   � ��[�[ 0 thesong theSong2 5�Z5 n   � �676 1   � ��Y
�Y 
pGen7 o   � ��X�X 0 thesong theSong�Z  �^  - o   � ��W�W 
0 config  + o      �V�V "0 songartworkpath songArtworkPath) 898 l  � ��U�T�S�U  �T  �S  9 :;: l  � ��R<=�R  < "  add song information to XML   = �>> 8   a d d   s o n g   i n f o r m a t i o n   t o   X M L; ?@? r   �ABA b   �CDC o   � ��Q�Q 0 xml  D n   �EFE I   ��PG�O�P 0 createxmlitem createXmlItemG HIH l  � �J�N�MJ b   � �KLK m   � �MM �NN  g e n r e -L o   � ��L�L 0 	genrename 	genreName�N  �M  I OPO o   � ��K�K 0 	genrename 	genreNameP QRQ m   �SS �TT  y e sR UVU o  �J�J 0 	genrename 	genreNameV WXW m  YY �ZZ 
 G e n r eX [�I[ o  �H�H "0 songartworkpath songArtworkPath�I  �O  F o   � ��G�G 
0 config  B o      �F�F 0 xml  @ \]\ l �E�D�C�E  �D  �C  ] ^_^ r  `a` [  bcb o  �B�B 0 	songindex 	songIndexc m  �A�A a o      �@�@ 0 	songindex 	songIndex_ d�?d l �>�=�<�>  �=  �<  �?  �f  �e   e�;e l �:�9�8�:  �9  �8  �;  �� 0 	genrename 	genreName � o   � ��7�7 0 	thegenres 	theGenres � f�6f l $$�5�4�3�5  �4  �3  �6   � ghg l &&�2�1�0�2  �1  �0  h iji r  &/klk b  &-mnm o  &'�/�/ 0 xml  n n  ',opo I  (,�.�-�,�. "0 createxmlfooter createXmlFooter�-  �,  p o  '(�+�+ 
0 config  l o      �*�* 0 xml  j q�)q l 00�(�'�&�(  �'  �&  �)   ? m     rr�                                                                                  hook  alis    H  
Caleb's HD                 �l�kH+  ��
iTunes.app                                                     `��Aa�        ����  	                Applications    �m�      �A�    ��  #Caleb's HD:Applications: iTunes.app    
 i T u n e s . a p p   
 C a l e b ' s   H D  Applications/iTunes.app   / ��   = sts l 33�%�$�#�%  �$  �#  t uvu l 33�"wx�"  w   return XML data   x �yy     r e t u r n   X M L   d a t av z{z L  35|| o  34�!�! 0 xml  { }� } l 66����  �  �  �    , ~~ l     ����  �  �   ��� l   ���� n    ��� I    ���� (0 createartworkcache createArtworkCache�  �  � o    �� 
0 config  �  �  � ��� l   ���� I    ���� $0 getresultlistxml getResultListXml� ��� m    �� ���  { q u e r y }�  �  �  �  �       �����  � ��� $0 getresultlistxml getResultListXml
� .aevtoappnull  �   � ****� �
 .�	�����
 $0 getresultlistxml getResultListXml�	 ��� �  �� 	0 query  �  � ����� ������� 	0 query  � 0 allsongs allSongs� 0 	thegenres 	theGenres� 0 	songindex 	songIndex�  0 thesong theSong�� 0 xml  �� 0 	genrename 	genreName�� "0 songartworkpath songArtworkPath� r��������� Y�������������� � � � � � ���������#��MSY��
�� 
cPly
�� 
cTrk�  
�� 
pGen
�� 
pKnd
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 
0 config  �� 0 	songlimit 	songLimit�� "0 createxmlheader createXmlHeader
�� 
leng�� "0 defaulticonname defaultIconName�� �� 0 createxmlitem createXmlItem
�� 
ctxt�� (0 getsongartworkpath getSongArtworkPath�� "0 createxmlfooter createXmlFooter�8�/*�l/�-�[[�,\Z�@\[�,\Z�9A1EE�OjvE�OkE�O 6�[��l 	kh ���, Y hO���, ���,%E�Y h[OY��O�j+ E�O��,j  (����a a a �%a %�a ,a + %E�OPY �kE�O ��[��l 	kh �a &E�O*�k/�[[�,\Z�8\[�,\Za 9A1E�O���, Y hO��,a  5ʤ��,��,m+ E�O��a �%�a �a �a + %E�O�kE�OPY hOP[OY��OPO��j+ %E�OPUO�OP� �����������
�� .aevtoappnull  �   � ****� k     ��  �� ��� �����  ��  ��  �  � 
��  ���� "���������
�� 
psxf
�� .sysoexecTEXT���     TEXT
�� 
ctxt
�� .sysoloadscpt        file�� 
0 config  �� (0 createartworkcache createArtworkCache�� $0 getresultlistxml getResultListXml��  *��j �&�%/j E�O�j+ O*�k+ 	 ascr  ��ޭ