<#include "mcelements.ftl">
(world.getBlockEntity(${toBlockPos(input$x, input$y, input$z)}) == null ? false :
	world.getBlockEntity(${toBlockPos(input$x, input$y, input$z)}).getAttachedOrElse(${JavaModName}.CUSTOM_NBT, new CompoundTag()).getBooleanOr(${input$tagName}, false))
