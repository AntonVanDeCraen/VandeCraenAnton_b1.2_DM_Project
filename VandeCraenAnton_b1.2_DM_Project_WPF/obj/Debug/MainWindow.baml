   M S B A M L   `   `   `  ����^  ZVandeCraenAnton_b1.2_DM_Project_WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:VandeCraenAnton_b1._2_DM_Project_WPF$VandeCraenAnton_b1._2_DM_Project_WPF  5   	   5    /VandeCraenAnton_b1._2_DM_Project_WPF.MainWindow   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   Dlocal2clr-namespace:VandeCraenAnton_b1._2_DM_Project_WPF     5   	   b ^MaterialDesignThemes.Wpf, Version=4.1.0.2556, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   -   5          � Title$  
MainWindow��5	   	   $	��550��6   $
��1000��6)   .��5
      �  � ColumnDefinitions 5   
   �� 5      6!   �� 5      6!   �� 5      6!   �� 5      6!    � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      $	��280 �6   6+   �� 5      $��* �6   6)   .+�5   
   �� $��10q�6   .+�5      �� $��
Liquipedia��6   ���	#FFB12A2A$��20(�6B   �� 5      $��	Overwatch��6   ���	#FFB12A2A$��15(�6A   5      �� 5   
   $��Spelers��6   $��1��6#   $��Center=�63   $��0,30,0,0q�6P   ���	#FFB12A2A$��20(�6y   �� 5   
   $��3��6   $��3��6!   ���	#FFB12A2A62   &   System.Windows.Controls.DataGrid  5   
   -   5          Name$ datagridSpelers��5      $��1��6,   $��3��69   $��15q�6M   "   VerticalScrollBarVisibility$ Visible=�6Y      AutoGenerateColumns .     
IsReadOnly .    Columns 5      0  *System.Windows.Controls.DataGridTextColumn  5       ,  &System.Windows.Controls.DataGridColumn   Header$ Voornaam��6%   1  +System.Windows.Controls.DataGridBoundColumn	   Binding	 68   �� *
voornaam+  5!      $
 Naam��6%   	 64   �� *naam+  5"      $ Bijnaam��6%   	 67   �� *	bijnaam+  5#      $	 Rol��6%   	 63   �� *role+  5$      $ Status��6%   	 66   �� *status+  5%      $ Regio��6%   	 65   �� *Regios.naam+5)      �� 5*   
   -   5        
 ��Name$
 	txtZoeken��5*      $��3��5+      $��30q�5,      $��5q�5-      
���   �
�������$��1q�50      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$$ Zoeken naar spelers op bijnaam��51       %  !MaterialDesignFloatingHintTextBox#��[  52      $��Center=�53      6(   �� 55   
   -   5         ��Name$ btnToevoegen��55       " MaterialDesignRaisedDarkButton#��[ 56      $	��Top=�57      $��30q�58      $��30��59      $
��auto��5:      ���	#FFB12A2A$��0q�5<      $��2��5=      +  %MaterialDesignThemes.Wpf.ButtonAssist   CornerRadius$ 25��5?      .��5A      �� $��Speler toevoegen��5B      5C      �� 5D   
   -   5        $ btnAanpassen��5D      #��[ 5E      $	��Top=�5F      $��30q�5G      $��30��5H      $
��auto��5I      ���	#FFB12A2A$��0q�5K      $��2��5L      $��1��5M      $ 25��5N      .��5P      �� $��Speler aanpassen��5Q      5R      �� 5S   
   -   5        $ btnVerwijderen��5S      #��[ 5U      $	��Top=�5V      $��30q�5W      $��30��5X      $
��auto��5Y      ���	#FFB12A2A$��0q�5[      $��2��5\      $��2��5]      $ 25��5^      .��5`      �� $��Speler verwijderen��5a      5b      �� 5c   
   -   5        $ btnTransfers��5c      $	��Top=�5d      #��[ 5e      $��30q�5f      $��30��5g      $
��auto��5h      ���	#FFB12A2A$��0q�5j      $��2��5k      $��3��5l      $ 25��5m      .��5o      �� $��	Transfers��5p      5q      �� 5s   
   -   5         ��Name$ RegionButtons��5s      $��1��6,   $��3��69   5u      �� 5v   
   -	   5        $ 
btnSluiten��5v      $��Center=�5w      #��[ 5x      $��
30,30,30,0q�5y      $��30��5z      $
��auto��5{      ���	#FFB12A2A$��0q�5}      $��2��5~      $��3��5      $ 25��5�      .��5�      �� $��Sluiten��5�      5�      5�      5�      