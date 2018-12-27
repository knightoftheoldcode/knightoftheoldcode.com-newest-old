require 'html-proofer'

options = { assume_extension: true, disable_external: true }
HTMLProofer.check_directory('./_site', options).run
