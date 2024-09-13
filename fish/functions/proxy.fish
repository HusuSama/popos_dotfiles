function proxy
	if test "$argv[1]" = "on"
	set -xg http_proxy http://127.0.0.1:7897
	set -xg https_proxy http://127.0.0.1:7897
	echo proxy on
	else
	set -e http_proxy
	set -e https_proxy
	echo proxy off
	end
end
