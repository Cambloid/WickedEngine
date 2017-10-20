#include "imageHF.hlsli"

float4 main(VertextoPixel PSIn) : SV_TARGET
{
	float4 color = xTexture.SampleLevel(Sampler, PSIn.tex.xy, xMipLevel) * xColor;
	
	color *= xMaskTex.SampleLevel(Sampler, PSIn.tex.xy, xMipLevel).a;

	return color;
}