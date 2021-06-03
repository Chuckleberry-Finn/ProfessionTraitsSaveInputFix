
-- Save inputfield defaults to selected preset
function CharacterCreationProfession:saveBuildStep1() -- {{{
	local text = self.savedBuilds.options[self.savedBuilds.selected]
    self.inputModal = BCRC.inputModal(true, nil, nil, nil, nil, text, CharacterCreationProfession.saveBuildStep2, self);
    self.inputModal.backgroundColor.a = 0.9
    self.inputModal:setValidateFunction(self, self.saveBuildValidate)
    if self.presetPanel.joyfocus then
        self.inputModal.param1 = self.presetPanel.joyfocus
        self.presetPanel.joyfocus.focus = self.inputModal
        updateJoypadFocus(self.presetPanel.joyfocus)
    end
end
