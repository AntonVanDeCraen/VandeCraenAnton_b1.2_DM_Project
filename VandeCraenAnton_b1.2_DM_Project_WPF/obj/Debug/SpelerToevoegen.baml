   M S B A M L   `   `   `  ����^  ZVandeCraenAnton_b1.2_DM_Project_WPF, Version=1.0.0.0, Culture=neutral, PublicKeyToken=null[2clr-namespace:VandeCraenAnton_b1._2_DM_Project_WPF$VandeCraenAnton_b1._2_DM_Project_WPF  5   	   :    4VandeCraenAnton_b1._2_DM_Project_WPF.SpelerToevoegen   5   	   R NWindowsBase, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35\ XPresentationFramework, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35W SPresentationCore, Version=4.0.0.0, Culture=neutral, PublicKeyToken=31bf3856ad364e35D 9http://schemas.microsoft.com/winfx/2006/xaml/presentation    5   	   R NSystem.Xaml, Version=4.0.0.0, Culture=neutral, PublicKeyToken=b77a5c561934e089:x,http://schemas.microsoft.com/winfx/2006/xaml     5   	   @d2http://schemas.microsoft.com/expression/blend/2008     5   	   Jmc;http://schemas.openxmlformats.org/markup-compatibility/2006     5   	   b ^MaterialDesignThemes.Wpf, Version=4.1.0.2556, Culture=neutral, PublicKeyToken=df2a72020bd7962aFmaterialDesign1http://materialdesigninxaml.net/winfx/xaml/themes  5   	   >local2clr-namespace:VandeCraenAnton_b1._2_DM_Project_WPF  5   	   -   5          � Title$  SpelerToevoegen��5	   	   $	��500��6!   $	��600��6.   .��5
      �  � ColumnDefinitions 5   
   �� 5      6!   �� 5      6!    � RowDefinitions 5   
   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   �� 5      $
��auto �6   6,   .+�5   
   �� $��2��6   $��Speler Toevoegen��6$   $��Center=�6?   $��20q�6\   $��20(�6h   $	��Top=�6v   �� 5   
   -   5         ��Name$ txtVoornaam��5      $��1��5      )  #MaterialDesignThemes.Wpf.HintAssist   Hint$ Voornaam��5      $��100,10,10,10q�5       %  !MaterialDesignFloatingHintTextBox#��[  5      $��Center=�5       �� 5!   
   -   5        $ txtAchternaam��5!      $��1��5"      $��1��5#      $
 Naam��5$      $��10,10,100,10q�5%      #��[  5'      $��Center=�5(      �� 5)   
   -   5        $ 
txtBijnaam��5)      $��2��5*      $��2��5+      $ Bijnaam��5,      $��100,10,100,10q�5-      #��[  5/      $��Center=�50      �� 51   
   -   5         ��Name$ 	cmbRegios��51      $��3��52      $��0��53      $ Regio��54      $��100,10,10,10q�55      58      �� 59   
   -   5        $ cmbTeams��59      $��3��5:      $��1��5;      $
 Team��5<      $��10,10,100,10q�5=      5@      � 5C   
   $��4��5E      $��100,10,100,10q�5F      $��2��5G       5J      �� 5K      6%   �� 5L      6%   �� 5M      6%    5O      �� 5P      6"   �� 5Q      6"   .+�5T      �� $
��Role��6   6'   �� 5U      -   5         ��Name$ chkDPS��5U      $	��DPS��6'   $
��auto��67   $��Center=�6D   $��1��6a   �� 5V      -   5        $ chkTank��5V      $
��Tank��6(   $��1��69   $��Center=�6J   $��1��6g   �� 5W      -	   5        $ 
chkSupport��5W      $��Support��6+   $��2��6=   $��Center=�6M   $��1��6j   5Y      � 5Z   
   $��5��5\      $��100,10,100,10q�5]      $��2��5^       5a      �� 5b      6%   �� 5c      6%    5f      �� 5g      6"   �� 5h      6"   .+�5k      �� $��Status��6   6)   	� 5l      -
   5         	�Name$ rbActief��5l      $��Actief��6,   $��Center=�6=   $��1��6Z    d� 	IsChecked$
 TrueY�6g   6z   	� 5m      -   5        $ 
rbInactief��5m      $��Inactief��6.   $��1��6A   $��1��6N   $��Center=�6^   6}   5p      �� 5r   
   -   5        	 ��Name$	 btnSpelerToevoegen��5r       " MaterialDesignRaisedDarkButton#��[ 5s      $��100,30,50,0q�5t      $��30��5u      $
��auto��5v      ���	#FFB12A2A$��0q�5x      $��6��5y      $��1��5z      +  %MaterialDesignThemes.Wpf.ButtonAssist
   CornerRadius$
 25��5|      .��5~      �� $��Speler toevoegen��5      5�      �� 5�   
   -   5        $	 
btnSluiten��5�      #��[ 5�      $��50,30,100,0q�5�      $��30��5�      $
��auto��5�      ���	#FFB12A2A$��0q�5�      $��6��5�      $��1��5�      $��1��5�      $
 25��5�      .��5�      �� $��Sluiten��5�      5�      5�      5�      