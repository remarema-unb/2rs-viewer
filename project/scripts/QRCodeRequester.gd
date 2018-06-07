extends HTTPRequest

var url = ""
var has_url = false
var enabled_requests = true

func _ready():
	print("[INFO] QRCodeRequester: ready")
	var dir = Directory.new()
	dir.remove("res://cache/qrcode.png")
	pass

func has_url():
	return has_url

func set_url(path):
	url = path
	has_url = true
	print("[INFO] QRCodeRequester: got url " + url)
	pass

func disable_requests():
	enabled_requests = false
	pass

func perform_request():
	if(has_url):
		if(enabled_requests):
			request(url)
			set_download_file("res://cache/qrcode.png")
	else:
		print("[ERROR] QRCodeRequester: Empty URL")
	pass