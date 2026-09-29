<#include "mcelements.ftl">
{
	if (!world.isClientSide()) {
		final BlockEntity _blockEntity${cbi} = world.getBlockEntity(${toBlockPos(input$x, input$y, input$z)});
		if (_blockEntity${cbi} != null) {
			final CompoundTag _data${cbi} = _blockEntity${cbi}.getAttachedOrElse(${JavaModName}.CUSTOM_NBT, new CompoundTag()).copy();
			_data${cbi}.putBoolean(${input$tagName}, ${input$tagValue});
			_blockEntity${cbi}.setAttached(${JavaModName}.CUSTOM_NBT, _data${cbi});
		}
	}
}
