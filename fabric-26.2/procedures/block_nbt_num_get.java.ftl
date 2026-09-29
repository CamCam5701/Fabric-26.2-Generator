<#include "mcelements.ftl">
(world.getBlockEntity(${toBlockPos(input$x, input$y, input$z)}) == null ? 0 :
	world.getBlockEntity(${toBlockPos(input$x, input$y, input$z)}).getAttachedOrElse(${JavaModName}.CUSTOM_NBT, new CompoundTag()).getDoubleOr(${input$tagName}, 0))
