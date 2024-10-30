import Lake
open Lake DSL

package «NEW_PROJ» where
  -- add package configuration options here

lean_lib «NEWPROJ» where
  -- add library configuration options here

@[default_target]
lean_exe «new_proj» where
  root := `Main
