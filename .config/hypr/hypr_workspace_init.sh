for i in {1..5}
do
  hyprctl dispatch workspace $i 
done
hyprctl dispatch workspace 1 
