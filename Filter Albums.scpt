FasdUAS 1.101.10   ��   ��    k             l     ��  ��    . (-- Filter albums by the typed query ----     � 	 	 P - -   F i l t e r   a l b u m s   b y   t h e   t y p e d   q u e r y   - - - -   
  
 l     ��������  ��  ��        l     ��  ��    "  load workflow configuration     �   8   l o a d   w o r k f l o w   c o n f i g u r a t i o n      l     ����  r         I    �� ��
�� .sysoloadscpt        file  4     �� 
�� 
psxf  l    ����  b        l   	 ����  c    	    l    ����  I   �� ��
�� .sysoexecTEXT���     TEXT  m         � ! !  p w d��  ��  ��    m    ��
�� 
ctxt��  ��    m   	 
 " " � # # & / C o n f i g u r a t i o n . s c p t��  ��  ��    o      ���� 
0 config  ��  ��     $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   ( 1 + constructs album result list as XML string    ) � * * V   c o n s t r u c t s   a l b u m   r e s u l t   l i s t   a s   X M L   s t r i n g '  + , + i      - . - I      �� /���� $0 getresultlistxml getResultListXml /  0�� 0 o      ���� 	0 query  ��  ��   . k    % 1 1  2 3 2 p       4 4 ������ 
0 config  ��   3  5 6 5 l     ��������  ��  ��   6  7 8 7 l     �� 9 :��   9 0 * search iTunes library for the given query    : � ; ; T   s e a r c h   i T u n e s   l i b r a r y   f o r   t h e   g i v e n   q u e r y 8  < = < O      > ? > k    @ @  A B A l   ��������  ��  ��   B  C D C l   �� E F��   E @ : search Music playlist for songs whose album matches query    F � G G t   s e a r c h   M u s i c   p l a y l i s t   f o r   s o n g s   w h o s e   a l b u m   m a t c h e s   q u e r y D  H I H r    " J K J l     L���� L e      M M 6     N O N n    
 P Q P 2    
��
�� 
cTrk Q 4    �� R
�� 
cPly R m    ����  O F     S T S E     U V U 1    ��
�� 
pAlb V o    ���� 	0 query   T E     W X W 1    ��
�� 
pKnd X l    Y���� Y n     Z [ Z o    ����  0 songdescriptor songDescriptor [ o    ���� 
0 config  ��  ��  ��  ��   K o      ���� 0 thesongs theSongs I  \ ] \ r   # ' ^ _ ^ J   # %����   _ o      ���� 0 	thealbums 	theAlbums ]  ` a ` r   ( + b c b m   ( )����  c o      ���� 0 	songindex 	songIndex a  d e d l  , ,��������  ��  ��   e  f g f l  , ,�� h i��   h - ' retrieve list of albums matching query    i � j j N   r e t r i e v e   l i s t   o f   a l b u m s   m a t c h i n g   q u e r y g  k l k X   , c m�� n m k   < ^ o o  p q p l  < <�� r s��   r   limit number of results    s � t t 0   l i m i t   n u m b e r   o f   r e s u l t s q  u v u Z  < I w x���� w ?  < A y z y o   < =���� 0 	songindex 	songIndex z l  = @ {���� { n   = @ | } | o   > @���� 0 	songlimit 	songLimit } o   = >���� 
0 config  ��  ��   x  S   D E��  ��   v  ~  ~ l  J J�� � ���   � / ) add album to list if not already present    � � � � R   a d d   a l b u m   t o   l i s t   i f   n o t   a l r e a d y   p r e s e n t   ��� � Z   J ^ � ����� � H   J P � � E  J O � � � o   J K���� 0 	thealbums 	theAlbums � n   K N � � � 1   L N��
�� 
pAlb � o   K L���� 0 thesong theSong � r   S Z � � � b   S X � � � o   S T���� 0 	thealbums 	theAlbums � l  T W ����� � n   T W � � � 1   U W��
�� 
pAlb � o   T U���� 0 thesong theSong��  ��   � o      ���� 0 	thealbums 	theAlbums��  ��  ��  �� 0 thesong theSong n o   / 0���� 0 thesongs theSongs l  � � � l  d d��������  ��  ��   �  � � � l  d d�� � ���   �    create initial XML string    � � � � 4   c r e a t e   i n i t i a l   X M L   s t r i n g �  � � � r   d k � � � n   d i � � � I   e i�������� "0 createxmlheader createXmlHeader��  ��   � o   d e���� 
0 config   � o      ���� 0 xml   �  � � � l  l l��������  ��  ��   �  � � � l  l l�� � ���   � R L inform user that no results were found (prompt to switch to iTunes instead)    � � � � �   i n f o r m   u s e r   t h a t   n o   r e s u l t s   w e r e   f o u n d   ( p r o m p t   t o   s w i t c h   t o   i T u n e s   i n s t e a d ) �  � � � Z   l � ��� � � =  l q � � � n   l o � � � 1   m o��
�� 
leng � o   l m���� 0 	thealbums 	theAlbums � m   o p����   � k   t � � �  � � � l  t t��������  ��  ��   �  � � � r   t � � � � b   t � � � � o   t u���� 0 xml   � n   u � � � � I   v ��� ����� 0 createxmlitem createXmlItem �  � � � m   v w � � � � �  n o - r e s u l t s �  � � � m   w x � � � � �  n u l l �  � � � m   x { � � � � �  n o �  � � � m   { ~ � � � � �  N o   A l b u m s   F o u n d �  � � � l  ~ � ����� � b   ~ � � � � b   ~ � � � � m   ~ � � � � � � ( N o   a l b u m s   m a t c h i n g   ' � o   � ����� 	0 query   � m   � � � � � � �  '��  ��   �  ��� � n   � � � � � o   � ����� "0 defaulticonname defaultIconName � o   � ����� 
0 config  ��  ��   � o   u v���� 
0 config   � o      ���� 0 xml   �  ��� � l  � ���������  ��  ��  ��  ��   � k   � � �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � m   � �����  � o      ���� 0 	songindex 	songIndex �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � 6 0 loop through the results to create the XML data    � � � � `   l o o p   t h r o u g h   t h e   r e s u l t s   t o   c r e a t e   t h e   X M L   d a t a �  � � � X   � ��� � � k   � � �  � � � l  � ���~�}�  �~  �}   �  � � � r   � � � � � c   � � � � � o   � ��|�| 0 	albumname 	albumName � m   � ��{
�{ 
ctxt � o      �z�z 0 	albumname 	albumName �  � � � r   � � � � � l  � � ��y�x � 6  � � � � � 4  � ��w �
�w 
cTrk � m   � ��v�v  � F   � � � � � =  � � �  � 1   � ��u
�u 
pAlb  o   � ��t�t 0 	albumname 	albumName � E   � � 1   � ��s
�s 
pKnd m   � � � 
 a u d i o�y  �x   � o      �r�r 0 thesong theSong �  l  � ��q�p�o�q  �p  �o    l  � ��n	
�n  	   limit number of results   
 � 0   l i m i t   n u m b e r   o f   r e s u l t s  Z  � ��m�l ?  � � o   � ��k�k 0 	songindex 	songIndex l  � ��j�i n   � � o   � ��h�h 0 	songlimit 	songLimit o   � ��g�g 
0 config  �j  �i    S   � ��m  �l    l  � ��f�e�d�f  �e  �d    r   � � n   � � I   � ��c�b�c (0 getsongartworkpath getSongArtworkPath �a o   � ��`�` 0 thesong theSong�a  �b   o   � ��_�_ 
0 config   o      �^�^ "0 songartworkpath songArtworkPath   l  � ��]�\�[�]  �\  �[    !"! l  � ��Z#$�Z  # "  add song information to XML   $ �%% 8   a d d   s o n g   i n f o r m a t i o n   t o   X M L" &'& r   �()( b   �*+* o   � ��Y�Y 0 xml  + n   �,-, I   ��X.�W�X 0 createxmlitem createXmlItem. /0/ l  � �1�V�U1 b   � �232 m   � �44 �55  a l b u m -3 o   � ��T�T 0 	albumname 	albumName�V  �U  0 676 o   � ��S�S 0 	albumname 	albumName7 898 m   � �:: �;;  y e s9 <=< o   � ��R�R 0 	albumname 	albumName= >?> n   � �@A@ 1   � ��Q
�Q 
pArtA o   � ��P�P 0 thesong theSong? B�OB o   � ��N�N "0 songartworkpath songArtworkPath�O  �W  - o   � ��M�M 
0 config  ) o      �L�L 0 xml  ' CDC l �K�J�I�K  �J  �I  D EFE r  
GHG [  IJI o  �H�H 0 	songindex 	songIndexJ m  �G�G H o      �F�F 0 	songindex 	songIndexF K�EK l �D�C�B�D  �C  �B  �E  �� 0 	albumname 	albumName � o   � ��A�A 0 	thealbums 	theAlbums � L�@L l �?�>�=�?  �>  �=  �@   � MNM l �<�;�:�<  �;  �:  N OPO r  QRQ b  STS o  �9�9 0 xml  T n  UVU I  �8�7�6�8 "0 createxmlfooter createXmlFooter�7  �6  V o  �5�5 
0 config  R o      �4�4 0 xml  P W�3W l �2�1�0�2  �1  �0  �3   ? m     XX�                                                                                  hook  alis    H  
Caleb's HD                 �i�H+     �
iTunes.app                                                      �s�Aa�        ����  	                Applications    �is9      �A�       �  #Caleb's HD:Applications: iTunes.app    
 i T u n e s . a p p   
 C a l e b ' s   H D  Applications/iTunes.app   / ��   = YZY l !!�/�.�-�/  �.  �-  Z [\[ l !!�,]^�,  ]   return XML data   ^ �__     r e t u r n   X M L   d a t a\ `a` L  !#bb o  !"�+�+ 0 xml  a c�*c l $$�)�(�'�)  �(  �'  �*   , ded l     �&�%�$�&  �%  �$  e fgf l   h�#�"h n    iji I    �!� ��! (0 createartworkcache createArtworkCache�   �  j o    �� 
0 config  �#  �"  g k�k l   l��l I    �m�� $0 getresultlistxml getResultListXmlm n�n m    oo �pp  { q u e r y }�  �  �  �  �       �qrs�  q ��� $0 getresultlistxml getResultListXml
� .aevtoappnull  �   � ****r � .��tu�� $0 getresultlistxml getResultListXml� �v� v  �� 	0 query  �  t �����
�	��� 	0 query  � 0 thesongs theSongs� 0 	thealbums 	theAlbums� 0 	songindex 	songIndex�
 0 thesong theSong�	 0 xml  � 0 	albumname 	albumName� "0 songartworkpath songArtworkPathu X��w����� ���������� � � � � � �����������4:����
� 
cPly
� 
cTrkw  
� 
pAlb
� 
pKnd� 
0 config  �  0 songdescriptor songDescriptor
�  
kocl
�� 
cobj
�� .corecnte****       ****�� 0 	songlimit 	songLimit�� "0 createxmlheader createXmlHeader
�� 
leng�� "0 defaulticonname defaultIconName�� �� 0 createxmlitem createXmlItem
�� 
ctxt�� (0 getsongartworkpath getSongArtworkPath
�� 
pArt�� "0 createxmlfooter createXmlFooter�&�*�l/�-�[[�,\Z�@\[�,\Z��,@A1EE�OjvE�OkE�O 6�[��l 
kh ���, Y hO���, ���,%E�Y h[OY��O�j+ E�O��,j  (����a a a �%a %�a ,a + %E�OPY {kE�O r�[��l 
kh �a &E�O*�k/�[[�,\Z�8\[�,\Za @A1E�O���, Y hOƤk+ E�O��a �%�a ��a ,�a + %E�O�kE�OP[OY��OPO��j+ %E�OPUO�OPs ��x����yz��
�� .aevtoappnull  �   � ****x k     {{  || f}} k����  ��  ��  y  z 
��  ���� "������o��
�� 
psxf
�� .sysoexecTEXT���     TEXT
�� 
ctxt
�� .sysoloadscpt        file�� 
0 config  �� (0 createartworkcache createArtworkCache�� $0 getresultlistxml getResultListXml��  *��j �&�%/j E�O�j+ O*�k+ 	 ascr  ��ޭ