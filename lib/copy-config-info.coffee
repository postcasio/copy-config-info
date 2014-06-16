module.exports =
	activate: (state) ->
		atom.workspaceView.command 'copy-config-info:copy', ->
			packages = atom.packages.getActivePackages().map (pkg) -> "#{pkg.name}@#{pkg.metadata.version}"
			atom.clipboard.write "# Packages\n#{packages.join '\n'}\n\n# Config\n#{JSON.stringify atom.config.settings, null, 4}"

	deactivate: ->


	serialize: ->
