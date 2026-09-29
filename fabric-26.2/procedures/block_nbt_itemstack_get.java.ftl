<#include "mcelements.ftl">
/*@ItemStack*/(world.getBlockEntity(${toBlockPos(input$x, input$y, input$z)}) == null ? ItemStack.EMPTY :
	ItemStack.OPTIONAL_CODEC.parse(world.registryAccess().createSerializationContext(NbtOps.INSTANCE),
		world.getBlockEntity(${toBlockPos(input$x, input$y, input$z)}).getAttachedOrElse(${JavaModName}.CUSTOM_NBT, new CompoundTag()).getCompoundOrEmpty(${input$tagName})).result().orElse(ItemStack.EMPTY))
