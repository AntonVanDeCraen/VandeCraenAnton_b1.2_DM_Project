   M S B A M L   `   `   `  ����^  ZVandeCraenAnton_b1.2_DM_Project_WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:VandeCraenAnton_b1._2_DM_Project_WPF$VandeCraenAnton_b1._2_DM_Project_WPF  5   	   4    .VandeCraenAnton_b1._2_DM_Project_WPF.Transfers   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Dlocal2clr-namespace:VandeCraenAnton_b1._2_DM_Project_WPF     5   	   b ^MaterialDesignThemes.Wpf, Version=4.1.0.2556, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5          � Title$  	Transfers��5	   	   $	��550��6   $	��900��6(   .��5
      �  � ColumnDefinitions 5   
   �� 5      6!   �� 5      6!   �� 5      $	��250��6   60    � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      $	��280 �6   6+   �� 5      $��* �6   6)   .+�5   
   �� $��10q�6   .+�5      �� $��
Liquipedia��6   ���	#FFB12A2A$��20(�6B   �� 5      $��	Overwatch��6   ���	#FFB12A2A$��15(�6A   5      �� 5   
   $��	Transfers��6   $��1��6%   $
��left=�65   $��0,30,0,0q�6P   ���	#FFB12A2A$��20(�6y   �� 5   
   $��2��6   $��3��6!   ���	#FFB12A2A62   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ datagridTransfers��5      $��1��6.   $��2��6;   $��15q�6O   "   VerticalScrollBarVisibility$ Visible=�6[      AutoGenerateColumns .     
IsReadOnly .    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5       ,  &System.Windows.Controls.DataGridColumn   Header$ id��6%   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 62   �� *id+  5!      $ Speler��6%   	 66   �� *Speler+  5"      $ 
Vorig team��6%   	 6:   �� *	vorigTeam+  5#        5$      $ 
Nieuw team��6%   	 6:   �� *	nieuwTeam+  5%      $ datum��6%   	 65   �� *datum+5)      �� 5+   
   $��2��6   $��Center=�6"   .+�5,      �� $��selecteer speler��6   $��15(�62   �� 5-      $��selecteer team��6   $��15(�60   5.      �� 51   
   -   5        
 ��Name$
 	txtZoeken��51      $��3��52      $��30q�53      $��15q�54      
���   �
�������$��1q�57      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Zoeken in transfers��58       %  !MaterialDesignFloatingHintTextBox#��[  59      $��Center=�5:      6(   �� 5<   
   $��2��6   $��1��6"   .+�5=      �� -   5         ��Name$ btnToevoegen��5=      $��2��5>       " MaterialDesignRaisedDarkButton#��[ 5?      $��10q�5@      $��30��5A      $	��200��5B      ���	#FFB12A2A$��0q�5D      $��1��5F      $
��Left=�5H      +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 25��5I       � ToolTip$7 1MaterialDesignRaisedDarkButton with Round Corners��5J      $
��Left=�6I   .��5K      �� $��Nieuwe transfer��5L      5M      �� 5N      -   5        $ btnVerwijderen��5N      $��2��5O      #��[ 5P      $��10q�5Q      $��30��5R      $	��200��5S      ���	#FFB12A2A$��0q�5U      $��2��5V      $��1��5W      $
��Left=�5Y      $ 25��5Z      $7 1MaterialDesignRaisedDarkButton with Round Corners��5[      $
��Left=�6I   .��5\      �� $��Transfer verwijderen��5]      5^      5_      �� 5c   
   -   5         ��Name$ JaartalButtons��5c      $��1��6-   $��3��6:   5e      �� 5f   
   -   5         ��Name$ 
cmbSpelers��5f      $��Right=�6'   $	��Top=�6C   $	��120��6[   $��2��6g   $��15q�6t   �� 5g   
   -   5        $ cmbTeams��5g      $��Right=�6%   $��Center=�6A   $	��120��6\   $��2��6h   $��	0,15,15,0q�6u   5k      5l      