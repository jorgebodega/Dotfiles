local cosmic_modules = {
  'core.disabled',
  'core.editor',
  'core.plugins',
  'core.commands',
  'core.mappings',
  'config.editor',
}

for _, mod in ipairs(cosmic_modules) do
  local ok, err = pcall(require, mod)
  if not ok and not mod:find('config') then
    error(('Error loading %s...\n\n%s'):format(mod, err))
  end
end
