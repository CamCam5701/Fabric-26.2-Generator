/*@ItemStack*/(ItemStack.OPTIONAL_CODEC.parse(${input$entity}.registryAccess().createSerializationContext(NbtOps.INSTANCE),
	${input$entity}.getAttachedOrElse(${JavaModName}.CUSTOM_NBT, new CompoundTag()).getCompoundOrEmpty(${input$tagName})).result().orElse(ItemStack.EMPTY))
