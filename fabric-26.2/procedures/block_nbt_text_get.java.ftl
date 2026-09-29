<#include "mcelements.ftl">
(world.getBlockEntity(${toBlockPos(input$x, input$y, input$z)}) == null ? "" :
	world.getBlockEntity(${toBlockPos(input$x, input$y, input$z)}).getAttachedOrElse(${JavaModName}.CUSTOM_NBT, new CompoundTag()).getStringOr(${input$tagName}, ""))
