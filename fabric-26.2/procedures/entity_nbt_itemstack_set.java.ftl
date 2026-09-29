<#include "mcitems.ftl">
{
	final Entity _entity${cbi} = ${input$entity};
	final CompoundTag _data${cbi} = _entity${cbi}.getAttachedOrElse(${JavaModName}.CUSTOM_NBT, new CompoundTag()).copy();
	_data${cbi}.put(${input$tagName}, (CompoundTag) ItemStack.OPTIONAL_CODEC.encode(${mappedMCItemToItemStackCode(input$tagValue, 1)},
		_entity${cbi}.registryAccess().createSerializationContext(NbtOps.INSTANCE), new CompoundTag()).result().orElseGet(CompoundTag::new));
	_entity${cbi}.setAttached(${JavaModName}.CUSTOM_NBT, _data${cbi});
}
