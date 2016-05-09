# name: embeddedcomments
# about: embedds a discourse topic inside a page as comments
# version: 0.1
# authors: Dashamir Hoxha

var params = request.query_parameters
params.each do |key,value|
  Rails.logger.warn "Param #{key}: #{value}"
end

if params[:embedded] == 'true'
  register_asset "javascript/iframeResizer.contentWindow.min.js", :server_side

  register_css <<CSS
#site-logo,
#topic-title,
#post-cloak-1,
#suggested-topics {
  display: none;
}
CSS

end
