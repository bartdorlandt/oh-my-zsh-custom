# setting the path for root users

if [ $UID -eq 0 ]; then
	PATH="/usr/local/bin:/usr/bin:/sbin:/bin:/usr/sbin"

	# set PATH so it includes user's private bin if it exists
	if [ -d $HOME/bin ] ; then 
		PATH="${PATH}:/$HOME/bin"
	fi                                                               
	# set PATH so it includes user's private scripts if it exists
	if [ -d $HOME/scripts ] ; then
		PATH="${PATH}:/$HOME/scripts"
	fi
fi
