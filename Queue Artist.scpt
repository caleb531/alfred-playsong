FasdUAS 1.101.10   ��   ��    k             l     ��  ��    6 0 Queue selected artist for playback in iTunes --     � 	 	 `   Q u e u e   s e l e c t e d   a r t i s t   f o r   p l a y b a c k   i n   i T u n e s   - -   
  
 l     ��������  ��  ��        l     ��  ��    "  load workflow configuration     �   8   l o a d   w o r k f l o w   c o n f i g u r a t i o n      l     ����  r         I    �� ��
�� .sysoloadscpt        file  4     �� 
�� 
psxf  l    ����  b        l   	 ����  c    	    l    ����  I   �� ��
�� .sysoexecTEXT���     TEXT  m         � ! !  p w d��  ��  ��    m    ��
�� 
ctxt��  ��    m   	 
 " " � # # & / C o n f i g u r a t i o n . s c p t��  ��  ��    o      ���� 
0 config  ��  ��     $ % $ l     ��������  ��  ��   %  & ' & l     �� ( )��   ( + % queues all songs by the given artist    ) � * * J   q u e u e s   a l l   s o n g s   b y   t h e   g i v e n   a r t i s t '  + , + i      - . - I      �� /���� 0 queueartist queueArtist /  0�� 0 o      ���� 0 
artistname 
artistName��  ��   . k     & 1 1  2 3 2 p       4 4 ������ 
0 config  ��   3  5 6 5 l     ��������  ��  ��   6  7 8 7 n      9 : 9 I    �������� 00 createworkflowplaylist createWorkflowPlaylist��  ��   : o     ���� 
0 config   8  ; < ; n     = > = I    ��������  0 disableshuffle disableShuffle��  ��   > o    ���� 
0 config   <  ? @ ? l   ��������  ��  ��   @  A B A r     C D C n     E F E I    �� G����  0 decodexmlchars decodeXmlChars G  H�� H o    ���� 0 
artistname 
artistName��  ��   F o    ���� 
0 config   D o      ���� 0 
artistname 
artistName B  I J I r     K L K n     M N M I    �� O����  0 getartistsongs getArtistSongs O  P�� P o    ���� 0 
artistname 
artistName��  ��   N o    ���� 
0 config   L o      ���� 0 thesongs theSongs J  Q R Q n    $ S T S I    $�� U���� 0 
queuesongs 
queueSongs U  V�� V o     ���� 0 thesongs theSongs��  ��   T o    ���� 
0 config   R  W�� W l  % %��������  ��  ��  ��   ,  X Y X l     ��������  ��  ��   Y  Z�� Z l    [���� [ I    �� \���� 0 queueartist queueArtist \  ]�� ] m     ^ ^ � _ _  { q u e r y }��  ��  ��  ��  ��       �� ` a b��   ` ������ 0 queueartist queueArtist
�� .aevtoappnull  �   � **** a �� .���� c d���� 0 queueartist queueArtist�� �� e��  e  ���� 0 
artistname 
artistName��   c ������ 0 
artistname 
artistName�� 0 thesongs theSongs d �������������� 
0 config  �� 00 createworkflowplaylist createWorkflowPlaylist��  0 disableshuffle disableShuffle��  0 decodexmlchars decodeXmlChars��  0 getartistsongs getArtistSongs�� 0 
queuesongs 
queueSongs�� '�j+ O�j+ O��k+ E�O��k+ E�O��k+ OP b �� f���� g h��
�� .aevtoappnull  �   � **** f k      i i   j j  Z����  ��  ��   g   h 	��  ���� "���� ^��
�� 
psxf
�� .sysoexecTEXT���     TEXT
�� 
ctxt
�� .sysoloadscpt        file�� 
0 config  �� 0 queueartist queueArtist�� *��j �&�%/j E�O*�k+ ascr  ��ޭ