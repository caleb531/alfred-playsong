FasdUAS 1.101.10   ��   ��    k             l     ��  ��    / )-- Filter artists by the typed query ----     � 	 	 R - -   F i l t e r   a r t i s t s   b y   t h e   t y p e d   q u e r y   - - - -   
  
 l     ��������  ��  ��        l     ��  ��    "  load workflow configuration     �   8   l o a d   w o r k f l o w   c o n f i g u r a t i o n      l     ����  r         I    �� ��
�� .sysoloadscpt        file  4     �� 
�� 
psxf  l    ����  b        l   	 ����  c    	    l    ����  I   �� ��
�� .sysoexecTEXT���     TEXT  m         � ! !  p w d��  ��  ��    m    ��
�� 
ctxt��  ��    m   	 
 " " � # # & / C o n f i g u r a t i o n . s c p t��  ��  ��    o      ���� 
0 config  ��  ��     $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   ( 2 , constructs artist result list as XML string    ) � * * X   c o n s t r u c t s   a r t i s t   r e s u l t   l i s t   a s   X M L   s t r i n g '  + , + i      - . - I      �� /���� $0 getresultlistxml getResultListXml /  0�� 0 o      ���� 	0 query  ��  ��   . k    3 1 1  2 3 2 p       4 4 ������ 
0 config  ��   3  5 6 5 l     ��������  ��  ��   6  7 8 7 l     �� 9 :��   9 0 * search iTunes library for the given query    : � ; ; T   s e a r c h   i T u n e s   l i b r a r y   f o r   t h e   g i v e n   q u e r y 8  < = < O    . > ? > k   - @ @  A B A l   ��������  ��  ��   B  C D C l   �� E F��   E A ; search Music playlist for songs whose artist matches query    F � G G v   s e a r c h   M u s i c   p l a y l i s t   f o r   s o n g s   w h o s e   a r t i s t   m a t c h e s   q u e r y D  H I H r    " J K J l     L���� L e      M M 6     N O N n    
 P Q P 2    
��
�� 
cTrk Q 4    �� R
�� 
cPly R m    ����  O F     S T S E     U V U 1    ��
�� 
pArt V o    ���� 	0 query   T E     W X W 1    ��
�� 
pKnd X l    Y���� Y n     Z [ Z o    ����  0 songdescriptor songDescriptor [ o    ���� 
0 config  ��  ��  ��  ��   K o      ���� 0 thesongs theSongs I  \ ] \ r   # ' ^ _ ^ J   # %����   _ o      ���� 0 
theartists 
theArtists ]  ` a ` r   ( + b c b m   ( )����  c o      ���� 0 	songindex 	songIndex a  d e d l  , ,��������  ��  ��   e  f g f l  , ,�� h i��   h . ( retrieve list of artists matching query    i � j j P   r e t r i e v e   l i s t   o f   a r t i s t s   m a t c h i n g   q u e r y g  k l k X   , c m�� n m k   < ^ o o  p q p l  < <�� r s��   r   limit number of results    s � t t 0   l i m i t   n u m b e r   o f   r e s u l t s q  u v u Z  < I w x���� w ?  < A y z y o   < =���� 0 	songindex 	songIndex z l  = @ {���� { n   = @ | } | o   > @���� 0 	songlimit 	songLimit } o   = >���� 
0 config  ��  ��   x  S   D E��  ��   v  ~  ~ l  J J�� � ���   � 0 * add artist to list if not already present    � � � � T   a d d   a r t i s t   t o   l i s t   i f   n o t   a l r e a d y   p r e s e n t   ��� � Z   J ^ � ����� � H   J P � � E  J O � � � o   J K���� 0 
theartists 
theArtists � n   K N � � � 1   L N��
�� 
pArt � o   K L���� 0 thesong theSong � r   S Z � � � b   S X � � � o   S T���� 0 
theartists 
theArtists � l  T W ����� � n   T W � � � 1   U W��
�� 
pArt � o   T U���� 0 thesong theSong��  ��   � o      ���� 0 
theartists 
theArtists��  ��  ��  �� 0 thesong theSong n o   / 0���� 0 thesongs theSongs l  � � � l  d d��������  ��  ��   �  � � � l  d d�� � ���   �    create initial XML string    � � � � 4   c r e a t e   i n i t i a l   X M L   s t r i n g �  � � � r   d k � � � n   d i � � � I   e i�������� "0 createxmlheader createXmlHeader��  ��   � o   d e���� 
0 config   � o      ���� 0 xml   �  � � � l  l l��������  ��  ��   �  � � � l  l l�� � ���   � R L inform user that no results were found (prompt to switch to iTunes instead)    � � � � �   i n f o r m   u s e r   t h a t   n o   r e s u l t s   w e r e   f o u n d   ( p r o m p t   t o   s w i t c h   t o   i T u n e s   i n s t e a d ) �  � � � Z   l! � ��� � � =  l q � � � n   l o � � � 1   m o��
�� 
leng � o   l m���� 0 thesongs theSongs � m   o p����   � k   t � � �  � � � l  t t��������  ��  ��   �  � � � r   t � � � � b   t � � � � o   t u���� 0 xml   � n   u � � � � I   v ��� ����� 0 createxmlitem createXmlItem �  � � � m   v w � � � � �  n o - r e s u l t s �  � � � m   w x � � � � �  n u l l �  � � � m   x { � � � � �  n o �  � � � m   { ~ � � � � �   N o   A r t i s t s   F o u n d �  � � � l  ~ � ����� � b   ~ � � � � b   ~ � � � � m   ~ � � � � � � * N o   a r t i s t s   m a t c h i n g   ' � o   � ����� 	0 query   � m   � � � � � � �  '��  ��   �  ��� � n   � � � � � o   � ����� "0 defaulticonname defaultIconName � o   � ����� 
0 config  ��  ��   � o   u v���� 
0 config   � o      ���� 0 xml   �  ��� � l  � ���������  ��  ��  ��  ��   � k   �! � �  � � � l  � ���������  ��  ��   �  � � � r   � � � � � m   � �����  � o      ���� 0 	songindex 	songIndex �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � 6 0 loop through the results to create the XML data    � � � � `   l o o p   t h r o u g h   t h e   r e s u l t s   t o   c r e a t e   t h e   X M L   d a t a �  � � � X   � ��� � � k   � � �  � � � l  � ���~�}�  �~  �}   �  � � � r   � � � � � c   � � � � � o   � ��|�| 0 
artistname 
artistName � m   � ��{
�{ 
ctxt � o      �z�z 0 
artistname 
artistName �  � � � r   � � � � � l  � � ��y�x � 6  � � � � � 4  � ��w �
�w 
cTrk � m   � ��v�v  � F   � � � � � =  � � �  � 1   � ��u
�u 
pArt  o   � ��t�t 0 
artistname 
artistName � >  � � 1   � ��s
�s 
pKnd m   � � �  P D F   D o c u m e n t�y  �x   � o      �r�r 0 thesong theSong �  l  � ��q�p�o�q  �p  �o    l  � ��n	
�n  	   limit number of results   
 � 0   l i m i t   n u m b e r   o f   r e s u l t s  Z  � ��m�l ?  � � o   � ��k�k 0 	songindex 	songIndex l  � ��j�i n   � � o   � ��h�h 0 	songlimit 	songLimit o   � ��g�g 
0 config  �j  �i    S   � ��m  �l    l  � ��f�e�d�f  �e  �d    l  � ��c�c   , & exclude digital booklets from results    � L   e x c l u d e   d i g i t a l   b o o k l e t s   f r o m   r e s u l t s  Z   ��b�a >  � � !  n   � �"#" 1   � ��`
�` 
pKnd# o   � ��_�_ 0 thesong theSong! m   � �$$ �%%  P D F   D o c u m e n t k   �&& '(' l  � ��^�]�\�^  �]  �\  ( )*) r   � �+,+ n   � �-.- I   � ��[/�Z�[ (0 getsongartworkpath getSongArtworkPath/ 0�Y0 o   � ��X�X 0 thesong theSong�Y  �Z  . o   � ��W�W 
0 config  , o      �V�V "0 songartworkpath songArtworkPath* 121 l  � ��U�T�S�U  �T  �S  2 343 l  � ��R56�R  5 "  add song information to XML   6 �77 8   a d d   s o n g   i n f o r m a t i o n   t o   X M L4 898 r   �:;: b   �
<=< o   � ��Q�Q 0 xml  = n   �	>?> I   �	�P@�O�P 0 createxmlitem createXmlItem@ ABA l  � �C�N�MC b   � �DED m   � �FF �GG  a r t i s t -E o   � ��L�L 0 
artistname 
artistName�N  �M  B HIH o   � ��K�K 0 
artistname 
artistNameI JKJ m   � �LL �MM  y e sK NON o   � ��J�J 0 
artistname 
artistNameO PQP m   �RR �SS  A r t i s tQ T�IT o  �H�H "0 songartworkpath songArtworkPath�I  �O  ? o   � ��G�G 
0 config  ; o      �F�F 0 xml  9 UVU l �E�D�C�E  �D  �C  V WXW r  YZY [  [\[ o  �B�B 0 	songindex 	songIndex\ m  �A�A Z o      �@�@ 0 	songindex 	songIndexX ]�?] l �>�=�<�>  �=  �<  �?  �b  �a   ^�;^ l �:�9�8�:  �9  �8  �;  �� 0 
artistname 
artistName � o   � ��7�7 0 
theartists 
theArtists � _�6_ l   �5�4�3�5  �4  �3  �6   � `a` l ""�2�1�0�2  �1  �0  a bcb r  "+ded b  ")fgf o  "#�/�/ 0 xml  g n  #(hih I  $(�.�-�,�. "0 createxmlfooter createXmlFooter�-  �,  i o  #$�+�+ 
0 config  e o      �*�* 0 xml  c j�)j l ,,�(�'�&�(  �'  �&  �)   ? m     kk�                                                                                  hook  alis    H  
Caleb's HD                 �i�H+     �
iTunes.app                                                      �s�Aa�        ����  	                Applications    �is9      �A�       �  #Caleb's HD:Applications: iTunes.app    
 i T u n e s . a p p   
 C a l e b ' s   H D  Applications/iTunes.app   / ��   = lml l //�%�$�#�%  �$  �#  m non l //�"pq�"  p   return XML data   q �rr     r e t u r n   X M L   d a t ao sts L  /1uu o  /0�!�! 0 xml  t v� v l 22����  �  �  �    , wxw l     ����  �  �  x yzy l   {��{ n    |}| I    ���� (0 createartworkcache createArtworkCache�  �  } o    �� 
0 config  �  �  z ~�~ l   �� I    ���� $0 getresultlistxml getResultListXml� ��� m    �� ���  { q u e r y }�  �  �  �  �       �����  � ��� $0 getresultlistxml getResultListXml
� .aevtoappnull  �   � ****� �
 .�	�����
 $0 getresultlistxml getResultListXml�	 ��� �  �� 	0 query  �  � ����� ������� 	0 query  � 0 thesongs theSongs� 0 
theartists 
theArtists� 0 	songindex 	songIndex�  0 thesong theSong�� 0 xml  �� 0 
artistname 
artistName�� "0 songartworkpath songArtworkPath� k������������������������� � � � � � ���������$��FLR��
�� 
cPly
�� 
cTrk�  
�� 
pArt
�� 
pKnd�� 
0 config  ��  0 songdescriptor songDescriptor
�� 
kocl
�� 
cobj
�� .corecnte****       ****�� 0 	songlimit 	songLimit�� "0 createxmlheader createXmlHeader
�� 
leng�� "0 defaulticonname defaultIconName�� �� 0 createxmlitem createXmlItem
�� 
ctxt�� (0 getsongartworkpath getSongArtworkPath�� "0 createxmlfooter createXmlFooter�4�+*�l/�-�[[�,\Z�@\[�,\Z��,@A1EE�OjvE�OkE�O 6�[��l 
kh ���, Y hO���, ���,%E�Y h[OY��O�j+ E�O��,j  (����a a a �%a %�a ,a + %E�OPY �kE�O ��[��l 
kh �a &E�O*�k/�[[�,\Z�8\[�,\Za 9A1E�O���, Y hO��,a  /Ƥk+ E�O��a �%�a �a �a + %E�O�kE�OPY hOP[OY��OPO��j+ %E�OPUO�OP� �����������
�� .aevtoappnull  �   � ****� k     ��  �� y�� ~����  ��  ��  �  � 
��  ���� "���������
�� 
psxf
�� .sysoexecTEXT���     TEXT
�� 
ctxt
�� .sysoloadscpt        file�� 
0 config  �� (0 createartworkcache createArtworkCache�� $0 getresultlistxml getResultListXml��  *��j �&�%/j E�O�j+ O*�k+ 	ascr  ��ޭ