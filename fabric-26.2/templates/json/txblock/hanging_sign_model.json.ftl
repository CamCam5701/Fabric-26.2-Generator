{
  "parent": "minecraft:block/template_<#if var_attached == "true">attached_</#if>hanging_sign_rot_${var_rotation}",
  "textures": {
    "all": "${data.texture.format("%s:block/%s")}",
    "particle": "${data.texture.format("%s:block/%s")}"
  }
}
