FasdUAS 1.101.10   ��   ��    k             l     ��  ��    - '-- Filter songs by the typed query ----     � 	 	 N - -   F i l t e r   s o n g s   b y   t h e   t y p e d   q u e r y   - - - -   
  
 l     ��������  ��  ��        l     ��  ��    "  load workflow configuration     �   8   l o a d   w o r k f l o w   c o n f i g u r a t i o n      l     ����  r         I    �� ��
�� .sysoloadscpt        file  4     �� 
�� 
psxf  l    ����  b        l   	 ����  c    	    l    ����  I   �� ��
�� .sysoexecTEXT���     TEXT  m         � ! !  p w d��  ��  ��    m    ��
�� 
ctxt��  ��    m   	 
 " " � # # & / C o n f i g u r a t i o n . s c p t��  ��  ��    o      ���� 
0 config  ��  ��     $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   ( 0 * constructs song result list as XML string    ) � * * T   c o n s t r u c t s   s o n g   r e s u l t   l i s t   a s   X M L   s t r i n g '  + , + i      - . - I      �� /���� $0 getresultlistxml getResultListXml /  0�� 0 o      ���� 	0 query  ��  ��   . k     � 1 1  2 3 2 p       4 4 ������ 
0 config  ��   3  5 6 5 l     ��������  ��  ��   6  7 8 7 l     �� 9 :��   9 0 * search iTunes library for the given query    : � ; ; T   s e a r c h   i T u n e s   l i b r a r y   f o r   t h e   g i v e n   q u e r y 8  < = < O     � > ? > k    � @ @  A B A l   ��������  ��  ��   B  C D C l   �� E F��   E 5 / search Music playlist for songs matching query    F � G G ^   s e a r c h   M u s i c   p l a y l i s t   f o r   s o n g s   m a t c h i n g   q u e r y D  H I H r     J K J l    L���� L I   �� M N
�� .hookSrchcTrk        cPly M 4    �� O
�� 
cPly O m    ����  N �� P��
�� 
pTrm P o   	 
���� 	0 query  ��  ��  ��   K o      ���� 0 thesongs theSongs I  Q R Q l   ��������  ��  ��   R  S T S l   �� U V��   U    create initial XML string    V � W W 4   c r e a t e   i n i t i a l   X M L   s t r i n g T  X Y X r     Z [ Z n     \ ] \ I    �������� "0 createxmlheader createXmlHeader��  ��   ] o    ���� 
0 config   [ o      ���� 0 xml   Y  ^ _ ^ l   ��������  ��  ��   _  ` a ` l   �� b c��   b R L inform user that no results were found (prompt to switch to iTunes instead)    c � d d �   i n f o r m   u s e r   t h a t   n o   r e s u l t s   w e r e   f o u n d   ( p r o m p t   t o   s w i t c h   t o   i T u n e s   i n s t e a d ) a  e f e Z    � g h�� i g =    j k j n     l m l 1    ��
�� 
leng m o    ���� 0 thesongs theSongs k m    ����   h k   ! 8 n n  o p o l  ! !��������  ��  ��   p  q r q r   ! 6 s t s b   ! 4 u v u o   ! "���� 0 xml   v n   " 3 w x w I   # 3�� y���� 0 createxmlitem createXmlItem y  z { z m   # $ | | � } }  n o - r e s u l t s {  ~  ~ m   $ % � � � � �  n u l l   � � � m   % & � � � � �  n o �  � � � m   & ' � � � � �  N o   S o n g s   F o u n d �  � � � l  ' , ����� � b   ' , � � � b   ' * � � � m   ' ( � � � � � & N o   s o n g s   m a t c h i n g   ' � o   ( )���� 	0 query   � m   * + � � � � �  '��  ��   �  ��� � n   , / � � � o   - /���� "0 defaulticonname defaultIconName � o   , -���� 
0 config  ��  ��   x o   " #���� 
0 config   t o      ���� 0 xml   r  ��� � l  7 7��������  ��  ��  ��  ��   i k   ; � � �  � � � l  ; ;��������  ��  ��   �  � � � l  ; ;�� � ���   � 6 0 loop through the results to create the XML data    � � � � `   l o o p   t h r o u g h   t h e   r e s u l t s   t o   c r e a t e   t h e   X M L   d a t a �  � � � r   ; > � � � m   ; <����  � o      ���� 0 	songindex 	songIndex �  � � � X   ? � ��� � � k   S � � �  � � � l  S S��������  ��  ��   �  � � � l  S S�� � ���   �   limit number of results    � � � � 0   l i m i t   n u m b e r   o f   r e s u l t s �  � � � Z   S b � ����� � ?  S Z � � � o   S T���� 0 	songindex 	songIndex � l  T Y ����� � n   T Y � � � o   U Y���� 0 	songlimit 	songLimit � o   T U���� 
0 config  ��  ��   �  S   ] ^��  ��   �  � � � l  c c��������  ��  ��   �  � � � l  c c�� � ���   �   get song information    � � � � *   g e t   s o n g   i n f o r m a t i o n �  � � � r   c k � � � l  c i ����� � e   c i � � n   c i � � � 1   d h��
�� 
pDID � o   c d���� 0 thesong theSong��  ��   � o      ���� 0 songid songId �  � � � r   l s � � � n   l q � � � 1   m q��
�� 
pnam � o   l m���� 0 thesong theSong � o      ���� 0 songname songName �  � � � r   t { � � � n   t y � � � 1   u y��
�� 
pArt � o   t u���� 0 thesong theSong � o      ���� 0 
songartist 
songArtist �  � � � r   | � � � � n   | � � � � 1   } ���
�� 
pAlb � o   | }���� 0 thesong theSong � o      ���� 0 	songalbum 	songAlbum �  � � � r   � � � � � n   � � � � � 1   � ���
�� 
pKnd � o   � ����� 0 thesong theSong � o      ���� 0 songkind songKind �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � , & exclude digital booklets from results    � � � � L   e x c l u d e   d i g i t a l   b o o k l e t s   f r o m   r e s u l t s �  � � � Z   � � � ����� � E   � � � � � o   � ��� 0 songkind songKind � l  � � ��~�} � n   � � � � � o   � ��|�|  0 songdescriptor songDescriptor � o   � ��{�{ 
0 config  �~  �}   � k   � � � �  � � � l  � ��z�y�x�z  �y  �x   �  � � � r   � � � � � n   � � � � � I   � ��w ��v�w (0 getsongartworkpath getSongArtworkPath �  ��u � o   � ��t�t 0 thesong theSong�u  �v   � o   � ��s�s 
0 config   � o      �r�r "0 songartworkpath songArtworkPath �  � � � l  � ��q�p�o�q  �p  �o   �  � � � l  � ��n �n    "  add song information to XML    � 8   a d d   s o n g   i n f o r m a t i o n   t o   X M L �  r   � � b   � � o   � ��m�m 0 xml   n   � �	
	 I   � ��l�k�l 0 createxmlitem createXmlItem  l  � ��j�i b   � � m   � � � 
 s o n g - o   � ��h�h 0 songid songId�j  �i    c   � � o   � ��g�g 0 songid songId m   � ��f
�f 
ctxt  m   � � �  y e s  o   � ��e�e 0 songname songName  o   � ��d�d 0 
songartist 
songArtist �c o   � ��b�b "0 songartworkpath songArtworkPath�c  �k  
 o   � ��a�a 
0 config   o      �`�` 0 xml    !  l  � ��_�^�]�_  �^  �]  ! "#" r   � �$%$ [   � �&'& o   � ��\�\ 0 	songindex 	songIndex' m   � ��[�[ % o      �Z�Z 0 	songindex 	songIndex# (�Y( l  � ��X�W�V�X  �W  �V  �Y  ��  ��   � )�U) l  � ��T�S�R�T  �S  �R  �U  �� 0 thesong theSong � o   B C�Q�Q 0 thesongs theSongs � *�P* l  � ��O�N�M�O  �N  �M  �P   f +,+ l  � ��L�K�J�L  �K  �J  , -.- r   � �/0/ b   � �121 o   � ��I�I 0 xml  2 n   � �343 I   � ��H�G�F�H "0 createxmlfooter createXmlFooter�G  �F  4 o   � ��E�E 
0 config  0 o      �D�D 0 xml  . 5�C5 l  � ��B�A�@�B  �A  �@  �C   ? m     66�                                                                                  hook  alis    H  
Caleb's HD                 �i�H+     �
iTunes.app                                                      �s�Aa�        ����  	                Applications    �is9      �A�       �  #Caleb's HD:Applications: iTunes.app    
 i T u n e s . a p p   
 C a l e b ' s   H D  Applications/iTunes.app   / ��   = 787 l  � ��?�>�=�?  �>  �=  8 9:9 l  � ��<;<�<  ;   return XML data   < �==     r e t u r n   X M L   d a t a: >?> L   � �@@ o   � ��;�; 0 xml  ? A�:A l  � ��9�8�7�9  �8  �7  �:   , BCB l     �6�5�4�6  �5  �4  C DED l   F�3�2F n    GHG I    �1�0�/�1 (0 createartworkcache createArtworkCache�0  �/  H o    �.�. 
0 config  �3  �2  E I�-I l   J�,�+J I    �*K�)�* $0 getresultlistxml getResultListXmlK L�(L m    MM �NN  { q u e r y }�(  �)  �,  �+  �-       �'OPQ�'  O �&�%�& $0 getresultlistxml getResultListXml
�% .aevtoappnull  �   � ****P �$ .�#�"RS�!�$ $0 getresultlistxml getResultListXml�# � T�  T  �� 	0 query  �"  R ������������ 	0 query  � 0 thesongs theSongs� 0 xml  � 0 	songindex 	songIndex� 0 thesong theSong� 0 songid songId� 0 songname songName� 0 
songartist 
songArtist� 0 	songalbum 	songAlbum� 0 songkind songKind� "0 songartworkpath songArtworkPathS 6������ | � � � � �����
�	��������� ����
� 
cPly
� 
pTrm
� .hookSrchcTrk        cPly� 
0 config  � "0 createxmlheader createXmlHeader
� 
leng� "0 defaulticonname defaultIconName� � 0 createxmlitem createXmlItem
�
 
kocl
�	 
cobj
� .corecnte****       ****� 0 	songlimit 	songLimit
� 
pDID
� 
pnam
� 
pArt
� 
pAlb
� 
pKnd�  0 songdescriptor songDescriptor�  (0 getsongartworkpath getSongArtworkPath
�� 
ctxt�� "0 createxmlfooter createXmlFooter�! �� �*�l/�l E�O�j+ E�O��,j  �������%�%��,�+ %E�OPY �kE�O ��[a a l kh ��a , Y hO�a ,EE�O�a ,E�O�a ,E�O�a ,E�O�a ,E�O��a , /Ĥk+ E�O��a �%�a &a ����+ %E�O�kE�OPY hOP[OY��OPO��j+ %E�OPUO�OPQ ��U����VW��
�� .aevtoappnull  �   � ****U k     XX  YY DZZ I����  ��  ��  V  W 
��  ���� "������M��
�� 
psxf
�� .sysoexecTEXT���     TEXT
�� 
ctxt
�� .sysoloadscpt        file�� 
0 config  �� (0 createartworkcache createArtworkCache�� $0 getresultlistxml getResultListXml��  *��j �&�%/j E�O�j+ O*�k+ 	ascr  ��ޭ