
Instance.properties = properties({
	{ name="Scenes", type="ObjectSet", set_types={type="PolyPopObject", index="SceneChangeAlert.SceneAlert"} }
})

function Instance:onInit()
	getEditor():addEventListener("onSceneChange", self, self.onSceneChange)
end

function Instance:onSceneChange()
	local scene = self.properties.Scenes:find(getEditor():getScene().name)
	if scene then
		scene.Alert:raise()
	end
end