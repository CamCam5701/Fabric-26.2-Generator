{
	final Entity _entity${cbi} = ${input$entity};
	final CompoundTag _data${cbi} = _entity${cbi}.getAttachedOrElse(${JavaModName}.CUSTOM_NBT, new CompoundTag()).copy();
	_data${cbi}.putDouble(${input$tagName}, ${input$tagValue});
	_entity${cbi}.setAttached(${JavaModName}.CUSTOM_NBT, _data${cbi});
}
