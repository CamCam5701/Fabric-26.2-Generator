<#include "mcelements.ftl">
<#include "mcitems.ftl">
{
	if (!world.isClientSide()) {
		final BlockEntity _blockEntity${cbi} = world.getBlockEntity(${toBlockPos(input$x, input$y, input$z)});
		if (_blockEntity${cbi} != null) {
			final CompoundTag _data${cbi} = _blockEntity${cbi}.getAttachedOrElse(${JavaModName}.CUSTOM_NBT, new CompoundTag()).copy();
			_data${cbi}.put(${input$tagName}, (CompoundTag) ItemStack.OPTIONAL_CODEC.encode(${mappedMCItemToItemStackCode(input$tagValue, 1)},
				world.registryAccess().createSerializationContext(NbtOps.INSTANCE), new CompoundTag()).result().orElseGet(CompoundTag::new));
			_blockEntity${cbi}.setAttached(${JavaModName}.CUSTOM_NBT, _data${cbi});
		}
	}
}
