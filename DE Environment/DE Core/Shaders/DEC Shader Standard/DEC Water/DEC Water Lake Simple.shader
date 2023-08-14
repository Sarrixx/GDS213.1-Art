// Made with Amplify Shader Editor
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "DEC/Water/Water Lake Simple"
{
	Properties
	{
		[Header(DEBUG SETTINGS)][Enum(Off,0,On,1)]_ZWriteMode("ZWrite Mode", Int) = 1
		[Enum(None,0,Alpha,1,Red,8,Green,4,Blue,2,RGB,14,RGBA,15)]_ColorMask("Color Mask Mode", Int) = 15
		[Header(GLOBAL SETTINGS)][Enum(UnityEngine.Rendering.CullMode)]_CullMode("Cull Mode", Int) = 0
		[HDR][Header (COLOR TINT WATER LAYERS)]_ShorelineTint("Shoreline Tint", Color) = (0.2784314,0.4235294,0.4431373,1)
		_ShorelineDepth("Shoreline Depth", Range( 0 , 100)) = 40
		_ShorelineOffset("Shoreline Offset", Range( -1 , 1)) = 0.1
		[HDR]_MidwaterTint("Midwater Tint", Color) = (0.1490196,0.4235294,0.4705882,1)
		[HDR]_DepthTint("Depth Tint", Color) = (0.1960784,0.4313726,0.509804,1)
		_DepthOffset("Depth Offset", Range( 0 , 10)) = 2
		[Header (OPACITY)]_Opacity("Opacity", Range( 0.001 , 1)) = 0.05
		_OpacityShoreline("Opacity Shoreline", Range( 0 , 5)) = 1
		[Header (REFRACTION)]_RefractionScale("Refraction Scale", Range( 0 , 1)) = 0.2
		[Header(SMOOTHNESS)]_SMOOTHNESS_Strength("Smoothness Strength", Range( 0 , 1)) = 0.1
		[Enum(Off,0,Active,1)]_SMOOTHNESS_ReduceHorizon("Reduce Horizon", Int) = 0
		_SMOOTHNESS_FresnelBias("Fresnel Bias", Range( 0 , 1)) = 0
		_SMOOTHNESS_FresnelScale("Fresnel Scale", Range( 0 , 1)) = 1
		_SMOOTHNESS_FresnelPower("Fresnel Power", Range( 0 , 10)) = 5
		[Header(SPECULAR)][Enum(Off,0,Active,1,Active Clamped,2)]_Specular_Mode("Specular Mode", Int) = 2
		[HDR]_SpecularColor("Specular Tint", Color) = (0.06666667,0.06666667,0.05882353,0)
		_Shininess("Specular Strength", Range( 0 , 1)) = 0
		_SpecularWrap("Specular Wrap", Range( 0 , 3)) = 0.5
		[Header(........................................)][Header(NORMAL MAP (HORIZONTAL))][Enum(Off,0,Swirling,1,Flow Map,2)]_WaterNormal_Horizontal_FlowType("Mode Flow Type", Int) = 1
		[Normal][SingleLineTexture]_WaterNormal_Horizontal_Vertical_NormalMap("Normal Map", 2D) = "bump" {}
		_WaterNormal_Horizontal_NormalStrength("Normal Strength", Float) = 1
		_WaterNormal_Horizontal_TilingX("Tiling X", Float) = 10
		_WaterNormal_Horizontal_TilingY("Tiling Y", Float) = 10
		_WaterNormal_Horizontal_Speed("Speed", Float) = 0.5
		_WaterNormal_Horizontal_FlowStrength("Flow Strength", Float) = 0.5
		_WaterNormal_Horizontal_Timescale("Flow Timescale", Range( 0 , 1)) = 0.6
		[Header(FOAM OFFSHORE (HORIZONTAL))][Enum(Off,0,Swirling,1,Flow Map,2)]_FOAMHORIZONTAL_ModeFlowType("Mode Flow Type", Int) = 0
		[HDR]_FOAMHORIZONTAL_Tint("Tint", Color) = (1,1,1,0)
		_FOAMHORIZONTAL_TintStrength("Tint Strength", Range( 0 , 5)) = 2.297033
		[SingleLineTexture]_FOAMHORIZONTAL_FoamMap("Foam Map", 2D) = "white" {}
		_FOAMHORIZONTAL_Distance("Foam Distance", Range( 0.3 , 100)) = 0.3
		_FOAMHORIZONTAL_NormalStrength("Normal Strength ", Range( 0 , 5)) = 5
		_FOAMHORIZONTAL_TilingX("Tiling X", Float) = 10
		_FOAMHORIZONTAL_TilingY("Tiling Y", Float) = 10
		_FOAMHORIZONTAL_Speed("Speed", Float) = 0.2
		_FOAMHORIZONTAL_FlowStrength("Flow Strength", Float) = 3
		_FOAMHORIZONTAL_Timescale("Flow Timescale", Range( 0 , 1)) = 0.2
		[Header(........................................)][Header(NORMAL MAP (VERTICAL))][Enum(Off,0,Swirling,1,Flow Map,2)]_WaterNormal_Vertical_FlowType("Mode Flow Type", Int) = 1
		[Normal][SingleLineTexture]_WaterNormal_Vertical_NormalMap("Normal Map", 2D) = "bump" {}
		_WaterNormal_Vertical_NormalStrength("Normal Strength", Float) = 1
		_WaterNormal_Vertical_TilingX("Tiling X", Float) = 10
		_WaterNormal_Vertical_TilingY("Tiling Y", Float) = 10
		_WaterNormal_Vertical_Speed("Speed", Float) = 0.5
		_WaterNormal_Vertical_FlowStrength("Flow Strength", Float) = 0.5
		_WaterNormal_Vertical_Timescale("Flow Timescale", Range( 0 , 1)) = 0.6
		[Header(FOAM OFFSHORE (VERTICAL))][Enum(Off,0,Swirling,1,Flow Map,2)]_FOAMVERTICAL_ModeFlowType("Mode Flow Type", Int) = 0
		[HDR]_FOAMVERTICAL_Tint("Tint", Color) = (1,1,1,0)
		_FOAMVERTICAL_TintStrength("Tint Strength", Range( 0 , 5)) = 1
		[SingleLineTexture]_FOAMVERTICAL_FoamMap("Foam Map", 2D) = "white" {}
		_FOAMVERTICAL_Distance("Foam Distance", Range( 0.3 , 100)) = 0.3
		_FOAMVERTICAL_NormalStrength("Normal Strength ", Range( 0 , 5)) = 5
		_FOAMVERTICAL_TilingX("Tiling X", Float) = 10
		_FOAMVERTICAL_TilingY("Tiling Y", Float) = 10
		_FOAMVERTICAL_Speed("Speed", Float) = 0.2
		_FOAMVERTICAL_FlowStrength("Flow Strength", Float) = 3
		_FOAMVERTICAL_Timescale("Flow Timescale", Range( 0 , 1)) = 0.2
		[Header(........................................)][Header(FOAM SHORELINE)][Enum(Off,0,Swirling,1,Flow Map,2)]_FoamShoreline_ModeFlowType("Mode Flow Type", Int) = 1
		[HDR]_FoamShoreline_Tint("Tint", Color) = (1,1,1,0)
		_FoamShoreline_TintStrength("Tint Strength", Range( 0 , 5)) = 0.5
		[SingleLineTexture]_FoamShoreline_FoamMap("Foam Map", 2D) = "white" {}
		_FoamShoreline_Distance("Foam Distance", Range( 0.5 , 100)) = 0.5
		_FoamShoreline_NormalStrength("Normal Strength ", Range( 0 , 5)) = 1
		_TilingX_Shoreline("Tiling X", Float) = 25
		_TilingY_Shoreline("Tiling Y", Float) = 25
		_FoamShoreline_Speed("Speed", Float) = 0.1
		_FoamShoreline_FlowStrength("Flow Strength", Float) = 0.5
		_FoamShoreline_Timescale("Flow Timescale", Range( 0 , 1)) = 0.1
		[Header(........................................)][Header(REFLECTION)][Enum(Off,0,Active,1)]_Reflection_Mode("Reflection Mode", Int) = 0
		[HDR][SingleLineTexture]_Reflection_Cubemap("Reflection Cubemap", CUBE) = "white" {}
		_Reflection_Cloud("Reflection Cloud", Range( 0 , 1)) = 1
		_Reflection_Wobble("Reflection Wobble", Range( 0 , 0.1)) = 0
		[HideInInspector] _tex4coord4( "", 2D ) = "white" {}
		[HideInInspector] _texcoord( "", 2D ) = "white" {}
		_Reflection_Smoothness("Reflection Smoothness", Range( 0 , 2)) = 2
		_Reflection_BumpScale("Reflection Bump Scale", Range( 0 , 1)) = 0.5
		_Reflection_BumpClamp("Reflection Bump Clamp", Range( 0 , 0.15)) = 0.15
		[Enum(Off,0,Active,1)]_Reflection_FresnelMode("Fresnel Mode", Int) = 1
		_Reflection_FresnelStrength("Fresnel Strength", Range( 0.001 , 1)) = 0.5
		_Reflection_FresnelBias("Fresnel Bias", Range( 0 , 1)) = 1
		_Reflection_FresnelScale("Fresnel Scale", Range( 0 , 1)) = 0.5
		[HideInInspector] __dirty( "", Int ) = 1
		[Header(Forward Rendering Options)]
		[ToggleOff] _SpecularHighlights("Specular Highlights", Float) = 1.0
		[ToggleOff] _GlossyReflections("Reflections", Float) = 1.0
	}

	SubShader
	{
		Tags{ "RenderType" = "Opaque"  "Queue" = "Transparent-2" "IgnoreProjector" = "True" "ForceNoShadowCasting" = "True" }
		LOD 200
		Cull [_CullMode]
		ZWrite [_ZWriteMode]
		ZTest LEqual
		Blend SrcAlpha OneMinusSrcAlpha
		
		ColorMask [_ColorMask]
		GrabPass{ }
		CGPROGRAM
		#include "UnityStandardUtils.cginc"
		#include "UnityShaderVariables.cginc"
		#include "UnityCG.cginc"
		#pragma target 4.6
		#pragma shader_feature _SPECULARHIGHLIGHTS_OFF
		#pragma shader_feature _GLOSSYREFLECTIONS_OFF
		#if defined(UNITY_STEREO_INSTANCING_ENABLED) || defined(UNITY_STEREO_MULTIVIEW_ENABLED)
		#define ASE_DECLARE_SCREENSPACE_TEXTURE(tex) UNITY_DECLARE_SCREENSPACE_TEXTURE(tex);
		#else
		#define ASE_DECLARE_SCREENSPACE_TEXTURE(tex) UNITY_DECLARE_SCREENSPACE_TEXTURE(tex)
		#endif
		#define ASE_USING_SAMPLING_MACROS 1
		#if defined(SHADER_API_D3D11) || defined(SHADER_API_XBOXONE) || defined(UNITY_COMPILER_HLSLCC) || defined(SHADER_API_PSSL) || (defined(SHADER_TARGET_SURFACE_ANALYSIS) && !defined(SHADER_TARGET_SURFACE_ANALYSIS_MOJOSHADER))//ASE Sampler Macros
		#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex.Sample(samplerTex,coord)
		#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
		#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex.SampleBias(samplerTex,coord,bias)
		#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex.SampleGrad(samplerTex,coord,ddx,ddy)
		#define SAMPLE_TEXTURECUBE_LOD(tex,samplerTex,coord,lod) tex.SampleLevel(samplerTex,coord, lod)
		#else//ASE Sampling Macros
		#define SAMPLE_TEXTURE2D(tex,samplerTex,coord) tex2D(tex,coord)
		#define SAMPLE_TEXTURE2D_LOD(tex,samplerTex,coord,lod) tex2Dlod(tex,float4(coord,0,lod))
		#define SAMPLE_TEXTURE2D_BIAS(tex,samplerTex,coord,bias) tex2Dbias(tex,float4(coord,0,bias))
		#define SAMPLE_TEXTURE2D_GRAD(tex,samplerTex,coord,ddx,ddy) tex2Dgrad(tex,coord,ddx,ddy)
		#define SAMPLE_TEXTURECUBE_LOD(tex,samplertex,coord,lod) texCUBElod (tex,half4(coord,lod))
		#endif//ASE Sampling Macros

		#pragma surface surf StandardSpecular keepalpha noinstancing  
		#undef TRANSFORM_TEX
		#define TRANSFORM_TEX(tex,name) float4(tex.xy * name##_ST.xy + name##_ST.zw, tex.z, tex.w)
		struct Input
		{
			float2 uv_texcoord;
			float3 worldNormal;
			INTERNAL_DATA
			float4 uv4_tex4coord4;
			float3 worldPos;
			float4 screenPos;
			float4 vertexColor : COLOR;
			float3 worldRefl;
			half ASEVFace : VFACE;
		};

		uniform int _ColorMask;
		uniform int _CullMode;
		uniform float4 _CameraDepthTexture_TexelSize;
		uniform int _ZWriteMode;
		uniform int _WaterNormal_Horizontal_FlowType;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WaterNormal_Horizontal_Vertical_NormalMap);
		uniform float _WaterNormal_Horizontal_Timescale;
		uniform float _WaterNormal_Horizontal_Speed;
		uniform float _WaterNormal_Horizontal_TilingX;
		uniform float _WaterNormal_Horizontal_TilingY;
		SamplerState sampler_trilinear_repeat;
		uniform float _WaterNormal_Horizontal_NormalStrength;
		uniform float _WaterNormal_Horizontal_FlowStrength;
		uniform int _WaterNormal_Vertical_FlowType;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_WaterNormal_Vertical_NormalMap);
		uniform float _WaterNormal_Vertical_Timescale;
		uniform float _WaterNormal_Vertical_Speed;
		uniform float _WaterNormal_Vertical_TilingX;
		uniform float _WaterNormal_Vertical_TilingY;
		uniform float _WaterNormal_Vertical_NormalStrength;
		uniform float _WaterNormal_Vertical_FlowStrength;
		uniform int _FOAMVERTICAL_ModeFlowType;
		uniform float _FOAMVERTICAL_NormalStrength;
		uniform float4 _FOAMVERTICAL_Tint;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_FOAMVERTICAL_FoamMap);
		uniform float _FOAMVERTICAL_Timescale;
		uniform float _FOAMVERTICAL_Speed;
		uniform float _FOAMVERTICAL_TilingX;
		uniform float _FOAMVERTICAL_TilingY;
		uniform float _FOAMVERTICAL_FlowStrength;
		uniform float _FOAMVERTICAL_TintStrength;
		UNITY_DECLARE_DEPTH_TEXTURE( _CameraDepthTexture );
		uniform float _FOAMVERTICAL_Distance;
		uniform int _FOAMHORIZONTAL_ModeFlowType;
		uniform float _FOAMHORIZONTAL_NormalStrength;
		uniform float4 _FOAMHORIZONTAL_Tint;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_FOAMHORIZONTAL_FoamMap);
		uniform float _FOAMHORIZONTAL_Timescale;
		uniform float _FOAMHORIZONTAL_Speed;
		uniform float _FOAMHORIZONTAL_TilingX;
		uniform float _FOAMHORIZONTAL_TilingY;
		uniform float _FOAMHORIZONTAL_FlowStrength;
		uniform float _FOAMHORIZONTAL_TintStrength;
		uniform float _FOAMHORIZONTAL_Distance;
		uniform int _FoamShoreline_ModeFlowType;
		uniform float _FoamShoreline_NormalStrength;
		uniform float4 _FoamShoreline_Tint;
		UNITY_DECLARE_TEX2D_NOSAMPLER(_FoamShoreline_FoamMap);
		uniform float _FoamShoreline_Timescale;
		uniform float _FoamShoreline_Speed;
		uniform float _TilingX_Shoreline;
		uniform float _TilingY_Shoreline;
		uniform float _FoamShoreline_FlowStrength;
		uniform float _FoamShoreline_TintStrength;
		uniform float _FoamShoreline_Distance;
		uniform int _SMOOTHNESS_ReduceHorizon;
		uniform int _Reflection_Mode;
		uniform float4 _DepthTint;
		uniform float4 _ShorelineTint;
		uniform float4 _MidwaterTint;
		uniform float _ShorelineDepth;
		uniform float _ShorelineOffset;
		uniform float _DepthOffset;
		ASE_DECLARE_SCREENSPACE_TEXTURE( _GrabTexture )
		uniform float _RefractionScale;
		uniform float _OpacityShoreline;
		uniform float _Opacity;
		uniform int _Reflection_FresnelMode;
		UNITY_DECLARE_TEXCUBE_NOSAMPLER(_Reflection_Cubemap);
		uniform float _Reflection_BumpScale;
		uniform float _Reflection_BumpClamp;
		uniform float _Reflection_Wobble;
		uniform float _Reflection_Smoothness;
		uniform float _Reflection_Cloud;
		uniform float _Reflection_FresnelStrength;
		uniform float _Reflection_FresnelBias;
		uniform float _Reflection_FresnelScale;
		uniform int _Specular_Mode;
		uniform float _SpecularWrap;
		uniform half _Shininess;
		uniform half4 _SpecularColor;
		uniform float _SMOOTHNESS_Strength;
		uniform float _SMOOTHNESS_FresnelBias;
		uniform float _SMOOTHNESS_FresnelScale;
		uniform float _SMOOTHNESS_FresnelPower;


		void ResetAlpha( Input SurfaceIn, SurfaceOutputStandard SurfaceOut, inout fixed4 FinalColor )
		{
			FinalColor.a = 1;
		}


		float2 AlignWithGrabTexel( float2 uv )
		{
			#if UNITY_UV_STARTS_AT_TOP
			if (_CameraDepthTexture_TexelSize.y < 0) {
				uv.y = 1 - uv.y;
			}
			#endif
			return (floor(uv * _CameraDepthTexture_TexelSize.zw) + 0.5) * abs(_CameraDepthTexture_TexelSize.xy);
		}


		float4 CalculateObliqueFrustumCorrection(  )
		{
			float x1 = -UNITY_MATRIX_P._31 / (UNITY_MATRIX_P._11 * UNITY_MATRIX_P._34);
			float x2 = -UNITY_MATRIX_P._32 / (UNITY_MATRIX_P._22 * UNITY_MATRIX_P._34);
			return float4(x1, x2, 0, UNITY_MATRIX_P._33 / UNITY_MATRIX_P._34 + x1 * UNITY_MATRIX_P._13 + x2 * UNITY_MATRIX_P._23);
		}


		float CorrectedLinearEyeDepth( float z, float correctionFactor )
		{
			return 1.f / (z / UNITY_MATRIX_P._34 + correctionFactor);
		}


		float3 float3switch238_g38242( int m_switch, float3 m_Off, float3 m_Swirling, float3 m_FlowMap )
		{
			if(m_switch ==0)
				return m_Off;
			else if(m_switch ==1)
				return m_Swirling;
			else if(m_switch ==2)
				return m_FlowMap;
			else
			return float3(0,0,0);
		}


		float3 float3switch456_g38252( int m_switch, float3 m_Off, float3 m_Swirling, float3 m_FlowMap )
		{
			if(m_switch ==0)
				return m_Off;
			else if(m_switch ==1)
				return m_Swirling;
			else if(m_switch ==2)
				return m_FlowMap;
			else
			return float3(0,0,0);
		}


		float4 float4switch278_g38207( int m_switch, float4 m_Off, float4 m_Swirling, float4 m_FlowMap )
		{
			if(m_switch ==0)
				return m_Off;
			else if(m_switch ==1)
				return m_Swirling;
			else if(m_switch ==2)
				return m_FlowMap;
			else
			return float4(0,0,0,0);
		}


		inline float3 ASESafeNormalize(float3 inVec)
		{
			float dp3 = max( 0.001f , dot( inVec , inVec ) );
			return inVec* rsqrt( dp3);
		}


		float3 float3switch1246_g38207( int m_switch, float3 m_Off, float3 m_Swirling, float3 m_FlowMap )
		{
			if(m_switch ==0)
				return m_Off;
			else if(m_switch ==1)
				return m_Swirling;
			else if(m_switch ==2)
				return m_FlowMap;
			else
			return float3(0,0,0);
		}


		float4 float4switch278_g38214( int m_switch, float4 m_Off, float4 m_Swirling, float4 m_FlowMap )
		{
			if(m_switch ==0)
				return m_Off;
			else if(m_switch ==1)
				return m_Swirling;
			else if(m_switch ==2)
				return m_FlowMap;
			else
			return float4(0,0,0,0);
		}


		float3 float3switch1230_g38214( int m_switch, float3 m_Off, float3 m_Swirling, float3 m_FlowMap )
		{
			if(m_switch ==0)
				return m_Off;
			else if(m_switch ==1)
				return m_Swirling;
			else if(m_switch ==2)
				return m_FlowMap;
			else
			return float3(0,0,0);
		}


		float4 float4switch278_g38221( int m_switch, float4 m_Off, float4 m_Swirling, float4 m_FlowMap )
		{
			if(m_switch ==0)
				return m_Off;
			else if(m_switch ==1)
				return m_Swirling;
			else if(m_switch ==2)
				return m_FlowMap;
			else
			return float4(0,0,0,0);
		}


		float3 float3switch1223_g38221( int m_switch, float3 m_Off, float3 m_Swirling, float3 m_FlowMap )
		{
			if(m_switch ==0)
				return m_Off;
			else if(m_switch ==1)
				return m_Swirling;
			else if(m_switch ==2)
				return m_FlowMap;
			else
			return float3(0,0,0);
		}


		float GetRefractedDepth55_g38205( float3 tangentSpaceNormal, float4 screenPos, inout float2 uv )
		{
			float2 uvOffset = tangentSpaceNormal.xy;
			uvOffset.y *= _CameraDepthTexture_TexelSize.z * abs(_CameraDepthTexture_TexelSize.y);
			uv = AlignWithGrabTexel((screenPos.xy + uvOffset) / screenPos.w);
			float backgroundDepth = LinearEyeDepth(SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, uv));
			float surfaceDepth = UNITY_Z_0_FAR_FROM_CLIPSPACE(screenPos.z);
			float depthDifference = backgroundDepth - surfaceDepth;
			uvOffset *= saturate(depthDifference);
			uv = AlignWithGrabTexel((screenPos.xy + uvOffset) / screenPos.w);
			backgroundDepth = LinearEyeDepth(SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, uv));
			return depthDifference = backgroundDepth - surfaceDepth;
		}


		float4 float4switch91_g38229( int m_switch, float4 m_Off, float4 m_Active )
		{
			if(m_switch ==0)
				return m_Off;
			else if(m_switch ==1)
				return m_Active;
			else
			return float4(0,0,0,0);
		}


		float4 float4switch61_g38229( int m_switch, float4 m_Off, float4 m_Active )
		{
			if(m_switch ==0)
				return m_Off;
			else if(m_switch ==1)
				return m_Active;
			else
			return float4(0,0,0,0);
		}


		float3 CallFresnelLerpFast( float3 specColor, float3 grazingTerm, float3 nv )
		{
			return FresnelLerpFast (specColor, grazingTerm, nv);
		}


		float4 float4switch1422_g13491( int m_switch, float4 m_Off, float4 m_Active )
		{
			if(m_switch ==0)
				return m_Off;
			else if(m_switch ==1)
				return m_Active;
			else
			return float4(0,0,0,0);
		}


		float3 float3switch31_g38184( int m_switch, float3 m_Off, float3 m_Active, float3 m_ActiveClamp )
		{
			if(m_switch ==0)
				return m_Off;
			else if(m_switch ==1)
				return m_Active;
			else if(m_switch ==2)
				return m_ActiveClamp;
			else
			return float3(0,0,0);
		}


		float3 float3switch11_g38184( int m_switch, float3 m_Off, float3 m_Active, float3 m_ActiveClamp )
		{
			if(m_switch ==0)
				return m_Off;
			else if(m_switch ==1)
				return m_Active;
			else if(m_switch ==2)
				return m_ActiveClamp;
			else
			return float3(0,0,0);
		}


		float3 float3switch18_g38184( int m_switch, float3 m_Off, float3 m_Active, float3 m_ActiveClamp )
		{
			if(m_switch ==0)
				return m_Off;
			else if(m_switch ==1)
				return m_Active;
			else if(m_switch ==2)
				return m_ActiveClamp;
			else
			return float3(0,0,0);
		}


		void surf( Input i , inout SurfaceOutputStandardSpecular o )
		{
			int m_switch238_g38242 = _WaterNormal_Horizontal_FlowType;
			float3 m_Off238_g38242 = float3(0,0,0.001);
			float mulTime155_g38242 = _Time.y * _WaterNormal_Horizontal_Timescale;
			float FlowSpeed365_g38242 = _WaterNormal_Horizontal_Speed;
			float temp_output_367_0_g38242 = ( FlowSpeed365_g38242 * 1.0 );
			float2 temp_cast_0 = (temp_output_367_0_g38242).xx;
			float2 appendResult235_g38242 = (float2(_WaterNormal_Horizontal_TilingX , _WaterNormal_Horizontal_TilingY));
			float2 uv_TexCoord23_g38242 = i.uv_texcoord * ( appendResult235_g38242 * float2( 2,2 ) );
			float2 _G_FlowSwirling = float2(2,4);
			float cos62_g38242 = cos( _G_FlowSwirling.x );
			float sin62_g38242 = sin( _G_FlowSwirling.x );
			float2 rotator62_g38242 = mul( uv_TexCoord23_g38242 - float2( 0,0 ) , float2x2( cos62_g38242 , -sin62_g38242 , sin62_g38242 , cos62_g38242 )) + float2( 0,0 );
			float2 panner15_g38242 = ( mulTime155_g38242 * temp_cast_0 + rotator62_g38242);
			float2 temp_cast_1 = (temp_output_367_0_g38242).xx;
			float cos8_g38242 = cos( _G_FlowSwirling.y );
			float sin8_g38242 = sin( _G_FlowSwirling.y );
			float2 rotator8_g38242 = mul( uv_TexCoord23_g38242 - float2( 0,0 ) , float2x2( cos8_g38242 , -sin8_g38242 , sin8_g38242 , cos8_g38242 )) + float2( 0,0 );
			float2 panner16_g38242 = ( mulTime155_g38242 * temp_cast_1 + rotator8_g38242);
			float2 temp_cast_2 = (temp_output_367_0_g38242).xx;
			float2 panner17_g38242 = ( mulTime155_g38242 * temp_cast_2 + uv_TexCoord23_g38242);
			float2 layeredBlendVar666_g38242 = i.uv_texcoord;
			float4 layeredBlend666_g38242 = ( lerp( lerp( SAMPLE_TEXTURE2D( _WaterNormal_Horizontal_Vertical_NormalMap, sampler_trilinear_repeat, panner15_g38242 ) , SAMPLE_TEXTURE2D( _WaterNormal_Horizontal_Vertical_NormalMap, sampler_trilinear_repeat, panner16_g38242 ) , layeredBlendVar666_g38242.x ) , SAMPLE_TEXTURE2D( _WaterNormal_Horizontal_Vertical_NormalMap, sampler_trilinear_repeat, panner17_g38242 ) , layeredBlendVar666_g38242.y ) );
			float4 temp_output_1_0_g38243 = layeredBlend666_g38242;
			float temp_output_8_0_g38243 = _WaterNormal_Horizontal_NormalStrength;
			float3 temp_output_699_59_g38242 = UnpackScaleNormal( temp_output_1_0_g38243, temp_output_8_0_g38243 );
			float3 ase_worldNormal = WorldNormalVector( i, float3( 0, 0, 1 ) );
			float3 temp_output_372_0_g38242 = abs( ase_worldNormal );
			float3 break386_g38242 = ( temp_output_372_0_g38242 * temp_output_372_0_g38242 );
			float _MASK_VERTICAL_Z381_g38242 = ( break386_g38242.z + 0.01 );
			float3 lerpResult677_g38242 = lerp( float3( 0,0,0 ) , temp_output_699_59_g38242 , _MASK_VERTICAL_Z381_g38242);
			float _MASK_VERTICAL_X373_g38242 = ( -break386_g38242.x + 0.2 );
			float3 lerpResult681_g38242 = lerp( float3( 0,0,0 ) , temp_output_699_59_g38242 , _MASK_VERTICAL_X373_g38242);
			float _MASK_VERTICAL_Y_NEG413_g38242 = ( ( ase_worldNormal.y + -0.5 ) * 0.5 );
			float3 lerpResult679_g38242 = lerp( float3( 0,0,0 ) , ( lerpResult677_g38242 + lerpResult681_g38242 ) , _MASK_VERTICAL_Y_NEG413_g38242);
			float3 m_Swirling238_g38242 = lerpResult679_g38242;
			float4 _FLOWMAP_Map89_g38247 = i.uv4_tex4coord4;
			float2 blendOpSrc197_g38247 = i.uv_texcoord;
			float2 blendOpDest197_g38247 = (_FLOWMAP_Map89_g38247).xy;
			float2 temp_output_197_0_g38247 = ( saturate( (( blendOpDest197_g38247 > 0.5 ) ? ( 1.0 - 2.0 * ( 1.0 - blendOpDest197_g38247 ) * ( 1.0 - blendOpSrc197_g38247 ) ) : ( 2.0 * blendOpDest197_g38247 * blendOpSrc197_g38247 ) ) ));
			float _FLOWMAP_FlowSpeed148_g38247 = FlowSpeed365_g38242;
			float temp_output_182_0_g38247 = ( _Time.y * _FLOWMAP_FlowSpeed148_g38247 );
			float temp_output_194_0_g38247 = (0.0 + (( ( temp_output_182_0_g38247 - floor( ( temp_output_182_0_g38247 + 0.5 ) ) ) * 2 ) - -1.0) * (1.0 - 0.0) / (1.0 - -1.0));
			float _FLOWMAP_FlowStrength146_g38247 = _WaterNormal_Horizontal_FlowStrength;
			float _TIME_UV_A199_g38247 = ( -temp_output_194_0_g38247 * _FLOWMAP_FlowStrength146_g38247 );
			float2 lerpResult198_g38247 = lerp( temp_output_197_0_g38247 , i.uv_texcoord , _TIME_UV_A199_g38247);
			float2 INPUT_MAP_TILLING128_g38242 = appendResult235_g38242;
			float2 uv_TexCoord205_g38247 = i.uv_texcoord * INPUT_MAP_TILLING128_g38242;
			float2 TEXTURE_TILLING211_g38247 = uv_TexCoord205_g38247;
			float2 FLOW_A201_g38247 = ( lerpResult198_g38247 + TEXTURE_TILLING211_g38247 );
			float temp_output_225_0_g38247 = (temp_output_182_0_g38247*1.0 + 0.5);
			float _TIME_UV_B214_g38247 = ( -(0.0 + (( ( temp_output_225_0_g38247 - floor( ( temp_output_225_0_g38247 + 0.5 ) ) ) * 2 ) - -1.0) * (1.0 - 0.0) / (1.0 - -1.0)) * _FLOWMAP_FlowStrength146_g38247 );
			float2 lerpResult229_g38247 = lerp( temp_output_197_0_g38247 , i.uv_texcoord , _TIME_UV_B214_g38247);
			float2 FLOW_B232_g38247 = ( lerpResult229_g38247 + TEXTURE_TILLING211_g38247 );
			float TIME_BLEND235_g38247 = saturate( abs( ( 1.0 - ( temp_output_194_0_g38247 / 0.5 ) ) ) );
			float4 lerpResult317_g38242 = lerp( SAMPLE_TEXTURE2D( _WaterNormal_Horizontal_Vertical_NormalMap, sampler_trilinear_repeat, FLOW_A201_g38247 ) , SAMPLE_TEXTURE2D( _WaterNormal_Horizontal_Vertical_NormalMap, sampler_trilinear_repeat, FLOW_B232_g38247 ) , TIME_BLEND235_g38247);
			float4 temp_output_1_0_g38249 = lerpResult317_g38242;
			float NormalStrength152_g38242 = _WaterNormal_Horizontal_NormalStrength;
			float temp_output_8_0_g38249 = NormalStrength152_g38242;
			float3 temp_output_701_59_g38242 = UnpackScaleNormal( temp_output_1_0_g38249, temp_output_8_0_g38249 );
			float3 lerpResult692_g38242 = lerp( float3( 0,0,0 ) , temp_output_701_59_g38242 , _MASK_VERTICAL_Z381_g38242);
			float3 lerpResult691_g38242 = lerp( float3( 0,0,0 ) , temp_output_701_59_g38242 , _MASK_VERTICAL_X373_g38242);
			float3 lerpResult697_g38242 = lerp( float3( 0,0,0 ) , ( lerpResult692_g38242 + lerpResult691_g38242 ) , _MASK_VERTICAL_Y_NEG413_g38242);
			float3 m_FlowMap238_g38242 = lerpResult697_g38242;
			float3 localfloat3switch238_g38242 = float3switch238_g38242( m_switch238_g38242 , m_Off238_g38242 , m_Swirling238_g38242 , m_FlowMap238_g38242 );
			int m_switch456_g38252 = _WaterNormal_Vertical_FlowType;
			float3 m_Off456_g38252 = float3(0,0,0.001);
			float mulTime155_g38252 = _Time.y * _WaterNormal_Vertical_Timescale;
			float FlowSpeed365_g38252 = _WaterNormal_Vertical_Speed;
			float temp_output_367_0_g38252 = ( FlowSpeed365_g38252 * 1.0 );
			float2 temp_cast_5 = (temp_output_367_0_g38252).xx;
			float2 appendResult235_g38252 = (float2(_WaterNormal_Vertical_TilingX , _WaterNormal_Vertical_TilingY));
			float2 uv_TexCoord23_g38252 = i.uv_texcoord * ( appendResult235_g38252 * float2( 2,2 ) );
			float cos62_g38252 = cos( _G_FlowSwirling.x );
			float sin62_g38252 = sin( _G_FlowSwirling.x );
			float2 rotator62_g38252 = mul( uv_TexCoord23_g38252 - float2( 0,0 ) , float2x2( cos62_g38252 , -sin62_g38252 , sin62_g38252 , cos62_g38252 )) + float2( 0,0 );
			float2 panner15_g38252 = ( mulTime155_g38252 * temp_cast_5 + rotator62_g38252);
			float2 temp_cast_6 = (temp_output_367_0_g38252).xx;
			float cos8_g38252 = cos( _G_FlowSwirling.y );
			float sin8_g38252 = sin( _G_FlowSwirling.y );
			float2 rotator8_g38252 = mul( uv_TexCoord23_g38252 - float2( 0,0 ) , float2x2( cos8_g38252 , -sin8_g38252 , sin8_g38252 , cos8_g38252 )) + float2( 0,0 );
			float2 panner16_g38252 = ( mulTime155_g38252 * temp_cast_6 + rotator8_g38252);
			float2 temp_cast_7 = (temp_output_367_0_g38252).xx;
			float2 panner17_g38252 = ( mulTime155_g38252 * temp_cast_7 + uv_TexCoord23_g38252);
			float2 layeredBlendVar448_g38252 = i.uv_texcoord;
			float4 layeredBlend448_g38252 = ( lerp( lerp( SAMPLE_TEXTURE2D( _WaterNormal_Vertical_NormalMap, sampler_trilinear_repeat, panner15_g38252 ) , SAMPLE_TEXTURE2D( _WaterNormal_Vertical_NormalMap, sampler_trilinear_repeat, panner16_g38252 ) , layeredBlendVar448_g38252.x ) , SAMPLE_TEXTURE2D( _WaterNormal_Vertical_NormalMap, sampler_trilinear_repeat, panner17_g38252 ) , layeredBlendVar448_g38252.y ) );
			float4 temp_output_1_0_g38256 = layeredBlend448_g38252;
			float temp_output_8_0_g38256 = _WaterNormal_Vertical_NormalStrength;
			float3 temp_output_481_59_g38252 = UnpackScaleNormal( temp_output_1_0_g38256, temp_output_8_0_g38256 );
			float3 temp_cast_9 = (0.5).xxx;
			float3 break386_g38252 = ( abs( ase_worldNormal ) - temp_cast_9 );
			float _MASK_VERTICAL_Z381_g38252 = ( break386_g38252.z + 0.75 );
			float3 lerpResult465_g38252 = lerp( float3( 0,0,0 ) , temp_output_481_59_g38252 , _MASK_VERTICAL_Z381_g38252);
			float _MASK_VERTICAL_X373_g38252 = ( break386_g38252.x + 0.45 );
			float3 lerpResult457_g38252 = lerp( float3( 0,0,0 ) , temp_output_481_59_g38252 , _MASK_VERTICAL_X373_g38252);
			float _MASK_VERTICAL_Y383_g38252 = ( -break386_g38252.y + 5.0 );
			float3 lerpResult454_g38252 = lerp( lerpResult465_g38252 , ( lerpResult465_g38252 + lerpResult457_g38252 ) , _MASK_VERTICAL_Y383_g38252);
			float _MASK_VERTICAL_Y_NEG413_g38252 = ( ( ase_worldNormal.y + ase_worldNormal.y ) - 1.0 );
			float3 lerpResult477_g38252 = lerp( float3( 0,0,0 ) , lerpResult454_g38252 , ( 1.0 - _MASK_VERTICAL_Y_NEG413_g38252 ));
			float3 m_Swirling456_g38252 = lerpResult477_g38252;
			float4 _FLOWMAP_Map89_g38254 = i.uv4_tex4coord4;
			float2 blendOpSrc197_g38254 = i.uv_texcoord;
			float2 blendOpDest197_g38254 = (_FLOWMAP_Map89_g38254).xy;
			float2 temp_output_197_0_g38254 = ( saturate( (( blendOpDest197_g38254 > 0.5 ) ? ( 1.0 - 2.0 * ( 1.0 - blendOpDest197_g38254 ) * ( 1.0 - blendOpSrc197_g38254 ) ) : ( 2.0 * blendOpDest197_g38254 * blendOpSrc197_g38254 ) ) ));
			float _FLOWMAP_FlowSpeed148_g38254 = FlowSpeed365_g38252;
			float temp_output_182_0_g38254 = ( _Time.y * _FLOWMAP_FlowSpeed148_g38254 );
			float temp_output_194_0_g38254 = (0.0 + (( ( temp_output_182_0_g38254 - floor( ( temp_output_182_0_g38254 + 0.5 ) ) ) * 2 ) - -1.0) * (1.0 - 0.0) / (1.0 - -1.0));
			float _FLOWMAP_FlowStrength146_g38254 = _WaterNormal_Vertical_FlowStrength;
			float _TIME_UV_A199_g38254 = ( -temp_output_194_0_g38254 * _FLOWMAP_FlowStrength146_g38254 );
			float2 lerpResult198_g38254 = lerp( temp_output_197_0_g38254 , i.uv_texcoord , _TIME_UV_A199_g38254);
			float2 INPUT_MAP_TILLING128_g38252 = appendResult235_g38252;
			float2 uv_TexCoord205_g38254 = i.uv_texcoord * INPUT_MAP_TILLING128_g38252;
			float2 TEXTURE_TILLING211_g38254 = uv_TexCoord205_g38254;
			float2 FLOW_A201_g38254 = ( lerpResult198_g38254 + TEXTURE_TILLING211_g38254 );
			float temp_output_225_0_g38254 = (temp_output_182_0_g38254*1.0 + 0.5);
			float _TIME_UV_B214_g38254 = ( -(0.0 + (( ( temp_output_225_0_g38254 - floor( ( temp_output_225_0_g38254 + 0.5 ) ) ) * 2 ) - -1.0) * (1.0 - 0.0) / (1.0 - -1.0)) * _FLOWMAP_FlowStrength146_g38254 );
			float2 lerpResult229_g38254 = lerp( temp_output_197_0_g38254 , i.uv_texcoord , _TIME_UV_B214_g38254);
			float2 FLOW_B232_g38254 = ( lerpResult229_g38254 + TEXTURE_TILLING211_g38254 );
			float TIME_BLEND235_g38254 = saturate( abs( ( 1.0 - ( temp_output_194_0_g38254 / 0.5 ) ) ) );
			float4 lerpResult317_g38252 = lerp( SAMPLE_TEXTURE2D( _WaterNormal_Vertical_NormalMap, sampler_trilinear_repeat, FLOW_A201_g38254 ) , SAMPLE_TEXTURE2D( _WaterNormal_Vertical_NormalMap, sampler_trilinear_repeat, FLOW_B232_g38254 ) , TIME_BLEND235_g38254);
			float4 temp_output_1_0_g38260 = lerpResult317_g38252;
			float NormalStrength152_g38252 = _WaterNormal_Vertical_NormalStrength;
			float temp_output_8_0_g38260 = NormalStrength152_g38252;
			float3 temp_output_483_59_g38252 = UnpackScaleNormal( temp_output_1_0_g38260, temp_output_8_0_g38260 );
			float3 lerpResult466_g38252 = lerp( float3( 0,0,0 ) , temp_output_483_59_g38252 , _MASK_VERTICAL_Z381_g38252);
			float3 lerpResult453_g38252 = lerp( float3( 0,0,0 ) , temp_output_483_59_g38252 , _MASK_VERTICAL_X373_g38252);
			float3 lerpResult460_g38252 = lerp( lerpResult466_g38252 , ( lerpResult466_g38252 + lerpResult453_g38252 ) , _MASK_VERTICAL_Y383_g38252);
			float3 lerpResult411_g38252 = lerp( float3( 0,0,0 ) , lerpResult460_g38252 , ( 1.0 - _MASK_VERTICAL_Y_NEG413_g38252 ));
			float3 m_FlowMap456_g38252 = lerpResult411_g38252;
			float3 localfloat3switch456_g38252 = float3switch456_g38252( m_switch456_g38252 , m_Off456_g38252 , m_Swirling456_g38252 , m_FlowMap456_g38252 );
			float2 weightedBlendVar1752_g13491 = i.uv_texcoord;
			float3 weightedBlend1752_g13491 = ( weightedBlendVar1752_g13491.x*localfloat3switch238_g38242 + weightedBlendVar1752_g13491.y*localfloat3switch456_g38252 );
			int ModeFlowType1245_g38207 = _FOAMVERTICAL_ModeFlowType;
			int m_switch1246_g38207 = ModeFlowType1245_g38207;
			float3 m_Off1246_g38207 = float3( 0,0,1 );
			float3 ase_vertex3Pos = mul( unity_WorldToObject, float4( i.worldPos , 1 ) );
			float3 temp_output_21_0_g38211 = ( ase_vertex3Pos * 500.0 );
			float3 temp_output_15_0_g38211 = cross( ase_worldNormal , ddy( temp_output_21_0_g38211 ) );
			float3 temp_output_6_0_g38211 = ddx( temp_output_21_0_g38211 );
			float dotResult27_g38211 = dot( temp_output_15_0_g38211 , temp_output_6_0_g38211 );
			float temp_output_14_0_g38211 = abs( dotResult27_g38211 );
			float4 _MASK_VECTOR1199_g38207 = float4(0.001,0.001,0.001,0);
			int m_switch278_g38207 = _FOAMVERTICAL_ModeFlowType;
			float4 m_Off278_g38207 = float4( 0,0,0,0 );
			float mulTime806_g38207 = _Time.y * _FOAMVERTICAL_Timescale;
			float FlowSpeed1146_g38207 = _FOAMVERTICAL_Speed;
			float temp_output_1150_0_g38207 = ( FlowSpeed1146_g38207 * 1.0 );
			float2 temp_cast_12 = (temp_output_1150_0_g38207).xx;
			float2 appendResult219_g38207 = (float2(_FOAMVERTICAL_TilingX , _FOAMVERTICAL_TilingY));
			float2 temp_output_1294_0_g38207 = ( appendResult219_g38207 * float2( 2,2 ) );
			float2 uv_TexCoord487_g38207 = i.uv_texcoord * temp_output_1294_0_g38207;
			float cos485_g38207 = cos( _G_FlowSwirling.x );
			float sin485_g38207 = sin( _G_FlowSwirling.x );
			float2 rotator485_g38207 = mul( uv_TexCoord487_g38207 - float2( 0,0 ) , float2x2( cos485_g38207 , -sin485_g38207 , sin485_g38207 , cos485_g38207 )) + float2( 0,0 );
			float2 panner483_g38207 = ( mulTime806_g38207 * temp_cast_12 + rotator485_g38207);
			float2 temp_cast_13 = (temp_output_1150_0_g38207).xx;
			float cos481_g38207 = cos( _G_FlowSwirling.y );
			float sin481_g38207 = sin( _G_FlowSwirling.y );
			float2 rotator481_g38207 = mul( uv_TexCoord487_g38207 - float2( 0,0 ) , float2x2( cos481_g38207 , -sin481_g38207 , sin481_g38207 , cos481_g38207 )) + float2( 0,0 );
			float2 panner480_g38207 = ( mulTime806_g38207 * temp_cast_13 + rotator481_g38207);
			float2 temp_cast_14 = (temp_output_1150_0_g38207).xx;
			float2 panner478_g38207 = ( mulTime806_g38207 * temp_cast_14 + uv_TexCoord487_g38207);
			float4 OUT_SWIRLING298_g38207 = ( SAMPLE_TEXTURE2D( _FOAMVERTICAL_FoamMap, sampler_trilinear_repeat, panner483_g38207 ) + ( SAMPLE_TEXTURE2D( _FOAMVERTICAL_FoamMap, sampler_trilinear_repeat, panner480_g38207 ) + SAMPLE_TEXTURE2D( _FOAMVERTICAL_FoamMap, sampler_trilinear_repeat, panner478_g38207 ) ) );
			float4 m_Swirling278_g38207 = OUT_SWIRLING298_g38207;
			float4 _FLOWMAP_Map89_g38212 = i.uv4_tex4coord4;
			float2 blendOpSrc197_g38212 = i.uv_texcoord;
			float2 blendOpDest197_g38212 = (_FLOWMAP_Map89_g38212).xy;
			float2 temp_output_197_0_g38212 = ( saturate( (( blendOpDest197_g38212 > 0.5 ) ? ( 1.0 - 2.0 * ( 1.0 - blendOpDest197_g38212 ) * ( 1.0 - blendOpSrc197_g38212 ) ) : ( 2.0 * blendOpDest197_g38212 * blendOpSrc197_g38212 ) ) ));
			float _FLOWMAP_FlowSpeed148_g38212 = FlowSpeed1146_g38207;
			float temp_output_182_0_g38212 = ( _Time.y * _FLOWMAP_FlowSpeed148_g38212 );
			float temp_output_194_0_g38212 = (0.0 + (( ( temp_output_182_0_g38212 - floor( ( temp_output_182_0_g38212 + 0.5 ) ) ) * 2 ) - -1.0) * (1.0 - 0.0) / (1.0 - -1.0));
			float FlowStrength1147_g38207 = _FOAMVERTICAL_FlowStrength;
			float _FLOWMAP_FlowStrength146_g38212 = FlowStrength1147_g38207;
			float _TIME_UV_A199_g38212 = ( -temp_output_194_0_g38212 * _FLOWMAP_FlowStrength146_g38212 );
			float2 lerpResult198_g38212 = lerp( temp_output_197_0_g38212 , i.uv_texcoord , _TIME_UV_A199_g38212);
			float2 INPUT_MAP_TILLING128_g38207 = temp_output_1294_0_g38207;
			float2 uv_TexCoord205_g38212 = i.uv_texcoord * INPUT_MAP_TILLING128_g38207;
			float2 TEXTURE_TILLING211_g38212 = uv_TexCoord205_g38212;
			float2 FLOW_A201_g38212 = ( lerpResult198_g38212 + TEXTURE_TILLING211_g38212 );
			float temp_output_225_0_g38212 = (temp_output_182_0_g38212*1.0 + 0.5);
			float _TIME_UV_B214_g38212 = ( -(0.0 + (( ( temp_output_225_0_g38212 - floor( ( temp_output_225_0_g38212 + 0.5 ) ) ) * 2 ) - -1.0) * (1.0 - 0.0) / (1.0 - -1.0)) * _FLOWMAP_FlowStrength146_g38212 );
			float2 lerpResult229_g38212 = lerp( temp_output_197_0_g38212 , i.uv_texcoord , _TIME_UV_B214_g38212);
			float2 FLOW_B232_g38212 = ( lerpResult229_g38212 + TEXTURE_TILLING211_g38212 );
			float TIME_BLEND235_g38212 = saturate( abs( ( 1.0 - ( temp_output_194_0_g38212 / 0.5 ) ) ) );
			float4 lerpResult1117_g38207 = lerp( SAMPLE_TEXTURE2D( _FOAMVERTICAL_FoamMap, sampler_trilinear_repeat, FLOW_A201_g38212 ) , SAMPLE_TEXTURE2D( _FOAMVERTICAL_FoamMap, sampler_trilinear_repeat, FLOW_B232_g38212 ) , TIME_BLEND235_g38212);
			float4 OUT_FLOW_FLOWMAP1119_g38207 = lerpResult1117_g38207;
			float4 m_FlowMap278_g38207 = OUT_FLOW_FLOWMAP1119_g38207;
			float4 localfloat4switch278_g38207 = float4switch278_g38207( m_switch278_g38207 , m_Off278_g38207 , m_Swirling278_g38207 , m_FlowMap278_g38207 );
			float4 ase_screenPos = float4( i.screenPos.xyz , i.screenPos.w + 0.00000000001 );
			float4 ase_screenPosNorm = ase_screenPos / ase_screenPos.w;
			ase_screenPosNorm.z = ( UNITY_NEAR_CLIP_VALUE >= 0 ) ? ase_screenPosNorm.z : ase_screenPosNorm.z * 0.5 + 0.5;
			float clampDepth2_g38237 = SAMPLE_DEPTH_TEXTURE( _CameraDepthTexture, ase_screenPosNorm.xy );
			float z1_g38237 = clampDepth2_g38237;
			float4 localCalculateObliqueFrustumCorrection3_g38233 = CalculateObliqueFrustumCorrection();
			float dotResult4_g38233 = dot( float4( ase_vertex3Pos , 0.0 ) , localCalculateObliqueFrustumCorrection3_g38233 );
			float correctionFactor1_g38237 = dotResult4_g38233;
			float localCorrectedLinearEyeDepth1_g38237 = CorrectedLinearEyeDepth( z1_g38237 , correctionFactor1_g38237 );
			float eyeDepth18_g38237 = LinearEyeDepth(SAMPLE_DEPTH_TEXTURE( _CameraDepthTexture, ase_screenPosNorm.xy ));
			float temp_output_17_0_g38237 = ( eyeDepth18_g38237 - ase_screenPos.w );
			float temp_output_13_0_g38237 = ( localCorrectedLinearEyeDepth1_g38237 - abs( temp_output_17_0_g38237 ) );
			float GRAB_SCREEN_DEPTH_BEHIND80_g13491 = saturate( temp_output_13_0_g38237 );
			float4 temp_cast_18 = (GRAB_SCREEN_DEPTH_BEHIND80_g13491).xxxx;
			float4 GRAB_SCREEN_DEPTH_BEHIND314_g38207 = temp_cast_18;
			float3 unityObjectToViewPos262_g38207 = UnityObjectToViewPos( ase_vertex3Pos );
			float GRAB_SCREEN_DEPTH73_g13491 = localCorrectedLinearEyeDepth1_g38237;
			float4 temp_cast_19 = (GRAB_SCREEN_DEPTH73_g13491).xxxx;
			float4 GRAB_SCREEN_DEPTH310_g38207 = temp_cast_19;
			float4 temp_cast_20 = (0.001).xxxx;
			float3 ase_worldPos = i.worldPos;
			float GRAB_SCREEN_CLOSENESS83_g13491 = saturate( ( 1.0 / distance( _WorldSpaceCameraPos , ase_worldPos ) ) );
			float4 temp_cast_21 = (GRAB_SCREEN_CLOSENESS83_g13491).xxxx;
			float4 GRAB_SCREEN_CLOSENESS312_g38207 = temp_cast_21;
			float4 lerpResult281_g38207 = lerp( float4( 0,0,0,0 ) , ( ( ( float4( (_FOAMVERTICAL_Tint).rgb , 0.0 ) * localfloat4switch278_g38207 * _FOAMVERTICAL_TintStrength ) * GRAB_SCREEN_DEPTH_BEHIND314_g38207 ) / 3.0 ) , saturate( ( ( ( ( unityObjectToViewPos262_g38207.z + GRAB_SCREEN_DEPTH310_g38207 ) - temp_cast_20 ) * GRAB_SCREEN_CLOSENESS312_g38207 ) / ( ( _FOAMVERTICAL_Distance - 0.001 ) * GRAB_SCREEN_CLOSENESS312_g38207 ) ) ));
			float4 lerpResult265_g38207 = lerp( float4( 0,0,0,0 ) , lerpResult281_g38207 , FlowStrength1147_g38207);
			float3 temp_cast_22 = (0.5).xxx;
			float3 break1161_g38207 = ( abs( ase_worldNormal ) - temp_cast_22 );
			float _MASK_VERTICAL_Z1162_g38207 = ( break1161_g38207.z + 0.45 );
			float4 lerpResult1173_g38207 = lerp( _MASK_VECTOR1199_g38207 , lerpResult265_g38207 , _MASK_VERTICAL_Z1162_g38207);
			float _MASK_VERTICAL_X1170_g38207 = ( break1161_g38207.x + 0.46 );
			float4 lerpResult1176_g38207 = lerp( _MASK_VECTOR1199_g38207 , lerpResult265_g38207 , _MASK_VERTICAL_X1170_g38207);
			float _MASK_VERTICAL_Y1163_g38207 = ( -break1161_g38207.y + 6.5 );
			float4 lerpResult1179_g38207 = lerp( lerpResult1173_g38207 , ( lerpResult1173_g38207 + lerpResult1176_g38207 ) , _MASK_VERTICAL_Y1163_g38207);
			float4 temp_output_1189_0_g38207 = saturate( lerpResult1179_g38207 );
			float4 temp_output_8_0_g38211 = ( _FOAMVERTICAL_NormalStrength * temp_output_1189_0_g38207 );
			float4 break18_g38211 = ( sign( temp_output_14_0_g38211 ) * ( ( ddx( temp_output_8_0_g38211 ) * float4( temp_output_15_0_g38211 , 0.0 ) ) + ( ddy( temp_output_8_0_g38211 ) * float4( cross( ase_worldNormal , temp_output_6_0_g38211 ) , 0.0 ) ) ) );
			float3 appendResult7_g38211 = (float3(break18_g38211.x , -break18_g38211.y , break18_g38211.z));
			float3 ase_worldTangent = WorldNormalVector( i, float3( 1, 0, 0 ) );
			float3 ase_worldBitangent = WorldNormalVector( i, float3( 0, 1, 0 ) );
			float3x3 ase_worldToTangent = float3x3( ase_worldTangent, ase_worldBitangent, ase_worldNormal );
			float3 worldToTangentDir5_g38211 = ASESafeNormalize( mul( ase_worldToTangent, ( ( temp_output_14_0_g38211 * ase_worldNormal ) - appendResult7_g38211 )) );
			float3 temp_output_1249_32_g38207 = worldToTangentDir5_g38211;
			float3 m_Swirling1246_g38207 = temp_output_1249_32_g38207;
			float3 m_FlowMap1246_g38207 = temp_output_1249_32_g38207;
			float3 localfloat3switch1246_g38207 = float3switch1246_g38207( m_switch1246_g38207 , m_Off1246_g38207 , m_Swirling1246_g38207 , m_FlowMap1246_g38207 );
			float3 FOAM_VERTICAL_OFFSHORE_NORMAL1192_g13491 = localfloat3switch1246_g38207;
			int ModeFlowType1232_g38214 = _FOAMHORIZONTAL_ModeFlowType;
			int m_switch1230_g38214 = ModeFlowType1232_g38214;
			float3 m_Off1230_g38214 = float3( 0,0,1 );
			float3 temp_output_21_0_g38218 = ( ase_vertex3Pos * 500.0 );
			float3 temp_output_15_0_g38218 = cross( ase_worldNormal , ddy( temp_output_21_0_g38218 ) );
			float3 temp_output_6_0_g38218 = ddx( temp_output_21_0_g38218 );
			float dotResult27_g38218 = dot( temp_output_15_0_g38218 , temp_output_6_0_g38218 );
			float temp_output_14_0_g38218 = abs( dotResult27_g38218 );
			float4 _MASK_VECTOR1200_g38214 = float4(0.001,0.001,0.001,0);
			int m_switch278_g38214 = _FOAMHORIZONTAL_ModeFlowType;
			float4 m_Off278_g38214 = float4( 0,0,0,0 );
			float mulTime806_g38214 = _Time.y * _FOAMHORIZONTAL_Timescale;
			float Speed1146_g38214 = _FOAMHORIZONTAL_Speed;
			float temp_output_1150_0_g38214 = ( Speed1146_g38214 * 1.0 );
			float2 temp_cast_26 = (temp_output_1150_0_g38214).xx;
			float2 appendResult219_g38214 = (float2(_FOAMHORIZONTAL_TilingX , _FOAMHORIZONTAL_TilingY));
			float2 temp_output_1214_0_g38214 = ( appendResult219_g38214 * float2( 2,2 ) );
			float2 uv_TexCoord487_g38214 = i.uv_texcoord * temp_output_1214_0_g38214;
			float cos485_g38214 = cos( _G_FlowSwirling.x );
			float sin485_g38214 = sin( _G_FlowSwirling.x );
			float2 rotator485_g38214 = mul( uv_TexCoord487_g38214 - float2( 0,0 ) , float2x2( cos485_g38214 , -sin485_g38214 , sin485_g38214 , cos485_g38214 )) + float2( 0,0 );
			float2 panner483_g38214 = ( mulTime806_g38214 * temp_cast_26 + rotator485_g38214);
			float2 temp_cast_27 = (temp_output_1150_0_g38214).xx;
			float cos481_g38214 = cos( _G_FlowSwirling.y );
			float sin481_g38214 = sin( _G_FlowSwirling.y );
			float2 rotator481_g38214 = mul( uv_TexCoord487_g38214 - float2( 0,0 ) , float2x2( cos481_g38214 , -sin481_g38214 , sin481_g38214 , cos481_g38214 )) + float2( 0,0 );
			float2 panner480_g38214 = ( mulTime806_g38214 * temp_cast_27 + rotator481_g38214);
			float2 temp_cast_28 = (temp_output_1150_0_g38214).xx;
			float2 panner478_g38214 = ( mulTime806_g38214 * temp_cast_28 + uv_TexCoord487_g38214);
			float4 OUT_SWIRLING298_g38214 = ( SAMPLE_TEXTURE2D( _FOAMHORIZONTAL_FoamMap, sampler_trilinear_repeat, panner483_g38214 ) + ( SAMPLE_TEXTURE2D( _FOAMHORIZONTAL_FoamMap, sampler_trilinear_repeat, panner480_g38214 ) + SAMPLE_TEXTURE2D( _FOAMHORIZONTAL_FoamMap, sampler_trilinear_repeat, panner478_g38214 ) ) );
			float4 m_Swirling278_g38214 = OUT_SWIRLING298_g38214;
			float4 _FLOWMAP_Map89_g38219 = i.uv4_tex4coord4;
			float2 blendOpSrc197_g38219 = i.uv_texcoord;
			float2 blendOpDest197_g38219 = (_FLOWMAP_Map89_g38219).xy;
			float2 temp_output_197_0_g38219 = ( saturate( (( blendOpDest197_g38219 > 0.5 ) ? ( 1.0 - 2.0 * ( 1.0 - blendOpDest197_g38219 ) * ( 1.0 - blendOpSrc197_g38219 ) ) : ( 2.0 * blendOpDest197_g38219 * blendOpSrc197_g38219 ) ) ));
			float _FLOWMAP_FlowSpeed148_g38219 = Speed1146_g38214;
			float temp_output_182_0_g38219 = ( _Time.y * _FLOWMAP_FlowSpeed148_g38219 );
			float temp_output_194_0_g38219 = (0.0 + (( ( temp_output_182_0_g38219 - floor( ( temp_output_182_0_g38219 + 0.5 ) ) ) * 2 ) - -1.0) * (1.0 - 0.0) / (1.0 - -1.0));
			float FlowStrength1147_g38214 = _FOAMHORIZONTAL_FlowStrength;
			float _FLOWMAP_FlowStrength146_g38219 = FlowStrength1147_g38214;
			float _TIME_UV_A199_g38219 = ( -temp_output_194_0_g38219 * _FLOWMAP_FlowStrength146_g38219 );
			float2 lerpResult198_g38219 = lerp( temp_output_197_0_g38219 , i.uv_texcoord , _TIME_UV_A199_g38219);
			float2 INPUT_MAP_TILLING128_g38214 = temp_output_1214_0_g38214;
			float2 uv_TexCoord205_g38219 = i.uv_texcoord * INPUT_MAP_TILLING128_g38214;
			float2 TEXTURE_TILLING211_g38219 = uv_TexCoord205_g38219;
			float2 FLOW_A201_g38219 = ( lerpResult198_g38219 + TEXTURE_TILLING211_g38219 );
			float temp_output_225_0_g38219 = (temp_output_182_0_g38219*1.0 + 0.5);
			float _TIME_UV_B214_g38219 = ( -(0.0 + (( ( temp_output_225_0_g38219 - floor( ( temp_output_225_0_g38219 + 0.5 ) ) ) * 2 ) - -1.0) * (1.0 - 0.0) / (1.0 - -1.0)) * _FLOWMAP_FlowStrength146_g38219 );
			float2 lerpResult229_g38219 = lerp( temp_output_197_0_g38219 , i.uv_texcoord , _TIME_UV_B214_g38219);
			float2 FLOW_B232_g38219 = ( lerpResult229_g38219 + TEXTURE_TILLING211_g38219 );
			float TIME_BLEND235_g38219 = saturate( abs( ( 1.0 - ( temp_output_194_0_g38219 / 0.5 ) ) ) );
			float4 lerpResult1117_g38214 = lerp( SAMPLE_TEXTURE2D( _FOAMHORIZONTAL_FoamMap, sampler_trilinear_repeat, FLOW_A201_g38219 ) , SAMPLE_TEXTURE2D( _FOAMHORIZONTAL_FoamMap, sampler_trilinear_repeat, FLOW_B232_g38219 ) , TIME_BLEND235_g38219);
			float4 OUT_FLOW_FLOWMAP1119_g38214 = lerpResult1117_g38214;
			float4 m_FlowMap278_g38214 = OUT_FLOW_FLOWMAP1119_g38214;
			float4 localfloat4switch278_g38214 = float4switch278_g38214( m_switch278_g38214 , m_Off278_g38214 , m_Swirling278_g38214 , m_FlowMap278_g38214 );
			float4 temp_cast_31 = (GRAB_SCREEN_DEPTH_BEHIND80_g13491).xxxx;
			float4 GRAB_SCREEN_DEPTH_BEHIND314_g38214 = temp_cast_31;
			float3 unityObjectToViewPos262_g38214 = UnityObjectToViewPos( ase_vertex3Pos );
			float4 temp_cast_32 = (GRAB_SCREEN_DEPTH73_g13491).xxxx;
			float4 GRAB_SCREEN_DEPTH310_g38214 = temp_cast_32;
			float4 temp_cast_33 = (0.001).xxxx;
			float4 temp_cast_34 = (GRAB_SCREEN_CLOSENESS83_g13491).xxxx;
			float4 GRAB_SCREEN_CLOSENESS312_g38214 = temp_cast_34;
			float4 lerpResult281_g38214 = lerp( float4( 0,0,0,0 ) , ( ( ( float4( (_FOAMHORIZONTAL_Tint).rgb , 0.0 ) * localfloat4switch278_g38214 * _FOAMHORIZONTAL_TintStrength ) * GRAB_SCREEN_DEPTH_BEHIND314_g38214 ) / 3.0 ) , saturate( ( ( ( ( unityObjectToViewPos262_g38214.z + GRAB_SCREEN_DEPTH310_g38214 ) - temp_cast_33 ) * GRAB_SCREEN_CLOSENESS312_g38214 ) / ( ( _FOAMHORIZONTAL_Distance - 0.001 ) * GRAB_SCREEN_CLOSENESS312_g38214 ) ) ));
			float4 lerpResult265_g38214 = lerp( float4( 0,0,0,0 ) , lerpResult281_g38214 , FlowStrength1147_g38214);
			float _MASK_HORIZONTAL1160_g38214 = ( ( ase_worldNormal.y + ase_worldNormal.y ) - 1.7 );
			float4 lerpResult1185_g38214 = lerp( _MASK_VECTOR1200_g38214 , lerpResult265_g38214 , _MASK_HORIZONTAL1160_g38214);
			float4 temp_output_1188_0_g38214 = saturate( lerpResult1185_g38214 );
			float4 temp_output_8_0_g38218 = ( _FOAMHORIZONTAL_NormalStrength * temp_output_1188_0_g38214 );
			float4 break18_g38218 = ( sign( temp_output_14_0_g38218 ) * ( ( ddx( temp_output_8_0_g38218 ) * float4( temp_output_15_0_g38218 , 0.0 ) ) + ( ddy( temp_output_8_0_g38218 ) * float4( cross( ase_worldNormal , temp_output_6_0_g38218 ) , 0.0 ) ) ) );
			float3 appendResult7_g38218 = (float3(break18_g38218.x , -break18_g38218.y , break18_g38218.z));
			float3 worldToTangentDir5_g38218 = ASESafeNormalize( mul( ase_worldToTangent, ( ( temp_output_14_0_g38218 * ase_worldNormal ) - appendResult7_g38218 )) );
			float3 temp_output_1233_32_g38214 = worldToTangentDir5_g38218;
			float3 m_Swirling1230_g38214 = temp_output_1233_32_g38214;
			float3 m_FlowMap1230_g38214 = temp_output_1233_32_g38214;
			float3 localfloat3switch1230_g38214 = float3switch1230_g38214( m_switch1230_g38214 , m_Off1230_g38214 , m_Swirling1230_g38214 , m_FlowMap1230_g38214 );
			float3 FOAM_HORIZONTAL_OFFSHORE_NORMAL1564_g13491 = localfloat3switch1230_g38214;
			int ModeFlowType1225_g38221 = _FoamShoreline_ModeFlowType;
			int m_switch1223_g38221 = ModeFlowType1225_g38221;
			float3 m_Off1223_g38221 = float3( 0,0,1 );
			float3 temp_output_21_0_g38225 = ( ase_vertex3Pos * 500.0 );
			float3 temp_output_15_0_g38225 = cross( ase_worldNormal , ddy( temp_output_21_0_g38225 ) );
			float3 temp_output_6_0_g38225 = ddx( temp_output_21_0_g38225 );
			float dotResult27_g38225 = dot( temp_output_15_0_g38225 , temp_output_6_0_g38225 );
			float temp_output_14_0_g38225 = abs( dotResult27_g38225 );
			int m_switch278_g38221 = _FoamShoreline_ModeFlowType;
			float4 m_Off278_g38221 = float4( 0,0,0,0 );
			float mulTime806_g38221 = _Time.y * _FoamShoreline_Timescale;
			float FlowSpeed1179_g38221 = _FoamShoreline_Speed;
			float temp_output_1185_0_g38221 = ( FlowSpeed1179_g38221 * 1.0 );
			float2 temp_cast_38 = (temp_output_1185_0_g38221).xx;
			float2 appendResult219_g38221 = (float2(_TilingX_Shoreline , _TilingY_Shoreline));
			float2 temp_output_1196_0_g38221 = ( appendResult219_g38221 * float2( 2,2 ) );
			float2 uv_TexCoord487_g38221 = i.uv_texcoord * temp_output_1196_0_g38221;
			float cos485_g38221 = cos( _G_FlowSwirling.x );
			float sin485_g38221 = sin( _G_FlowSwirling.x );
			float2 rotator485_g38221 = mul( uv_TexCoord487_g38221 - float2( 0,0 ) , float2x2( cos485_g38221 , -sin485_g38221 , sin485_g38221 , cos485_g38221 )) + float2( 0,0 );
			float2 panner483_g38221 = ( mulTime806_g38221 * temp_cast_38 + rotator485_g38221);
			float2 temp_cast_39 = (temp_output_1185_0_g38221).xx;
			float cos481_g38221 = cos( _G_FlowSwirling.y );
			float sin481_g38221 = sin( _G_FlowSwirling.y );
			float2 rotator481_g38221 = mul( uv_TexCoord487_g38221 - float2( 0,0 ) , float2x2( cos481_g38221 , -sin481_g38221 , sin481_g38221 , cos481_g38221 )) + float2( 0,0 );
			float2 panner480_g38221 = ( mulTime806_g38221 * temp_cast_39 + rotator481_g38221);
			float2 temp_cast_40 = (temp_output_1185_0_g38221).xx;
			float2 panner478_g38221 = ( mulTime806_g38221 * temp_cast_40 + uv_TexCoord487_g38221);
			float4 OUT_SWIRLING298_g38221 = ( SAMPLE_TEXTURE2D( _FoamShoreline_FoamMap, sampler_trilinear_repeat, panner483_g38221 ) + ( SAMPLE_TEXTURE2D( _FoamShoreline_FoamMap, sampler_trilinear_repeat, panner480_g38221 ) + SAMPLE_TEXTURE2D( _FoamShoreline_FoamMap, sampler_trilinear_repeat, panner478_g38221 ) ) );
			float4 m_Swirling278_g38221 = OUT_SWIRLING298_g38221;
			float4 _FLOWMAP_Map89_g38226 = i.uv4_tex4coord4;
			float2 blendOpSrc197_g38226 = i.uv_texcoord;
			float2 blendOpDest197_g38226 = (_FLOWMAP_Map89_g38226).xy;
			float2 temp_output_197_0_g38226 = ( saturate( (( blendOpDest197_g38226 > 0.5 ) ? ( 1.0 - 2.0 * ( 1.0 - blendOpDest197_g38226 ) * ( 1.0 - blendOpSrc197_g38226 ) ) : ( 2.0 * blendOpDest197_g38226 * blendOpSrc197_g38226 ) ) ));
			float _FLOWMAP_FlowSpeed148_g38226 = FlowSpeed1179_g38221;
			float temp_output_182_0_g38226 = ( _Time.y * _FLOWMAP_FlowSpeed148_g38226 );
			float temp_output_194_0_g38226 = (0.0 + (( ( temp_output_182_0_g38226 - floor( ( temp_output_182_0_g38226 + 0.5 ) ) ) * 2 ) - -1.0) * (1.0 - 0.0) / (1.0 - -1.0));
			float FlowStrength1182_g38221 = _FoamShoreline_FlowStrength;
			float _FLOWMAP_FlowStrength146_g38226 = FlowStrength1182_g38221;
			float _TIME_UV_A199_g38226 = ( -temp_output_194_0_g38226 * _FLOWMAP_FlowStrength146_g38226 );
			float2 lerpResult198_g38226 = lerp( temp_output_197_0_g38226 , i.uv_texcoord , _TIME_UV_A199_g38226);
			float2 INPUT_MAP_TILLING128_g38221 = temp_output_1196_0_g38221;
			float2 uv_TexCoord205_g38226 = i.uv_texcoord * INPUT_MAP_TILLING128_g38221;
			float2 TEXTURE_TILLING211_g38226 = uv_TexCoord205_g38226;
			float2 FLOW_A201_g38226 = ( lerpResult198_g38226 + TEXTURE_TILLING211_g38226 );
			float temp_output_225_0_g38226 = (temp_output_182_0_g38226*1.0 + 0.5);
			float _TIME_UV_B214_g38226 = ( -(0.0 + (( ( temp_output_225_0_g38226 - floor( ( temp_output_225_0_g38226 + 0.5 ) ) ) * 2 ) - -1.0) * (1.0 - 0.0) / (1.0 - -1.0)) * _FLOWMAP_FlowStrength146_g38226 );
			float2 lerpResult229_g38226 = lerp( temp_output_197_0_g38226 , i.uv_texcoord , _TIME_UV_B214_g38226);
			float2 FLOW_B232_g38226 = ( lerpResult229_g38226 + TEXTURE_TILLING211_g38226 );
			float TIME_BLEND235_g38226 = saturate( abs( ( 1.0 - ( temp_output_194_0_g38226 / 0.5 ) ) ) );
			float4 lerpResult1153_g38221 = lerp( SAMPLE_TEXTURE2D( _FoamShoreline_FoamMap, sampler_trilinear_repeat, FLOW_A201_g38226 ) , SAMPLE_TEXTURE2D( _FoamShoreline_FoamMap, sampler_trilinear_repeat, FLOW_B232_g38226 ) , TIME_BLEND235_g38226);
			float4 OUT_FLOW_FLOWMAP1156_g38221 = lerpResult1153_g38221;
			float4 m_FlowMap278_g38221 = OUT_FLOW_FLOWMAP1156_g38221;
			float4 localfloat4switch278_g38221 = float4switch278_g38221( m_switch278_g38221 , m_Off278_g38221 , m_Swirling278_g38221 , m_FlowMap278_g38221 );
			float4 temp_cast_43 = (GRAB_SCREEN_DEPTH_BEHIND80_g13491).xxxx;
			float4 GRAB_SCREEN_DEPTH_BEHIND314_g38221 = temp_cast_43;
			float3 unityObjectToViewPos731_g38221 = UnityObjectToViewPos( ase_vertex3Pos );
			float4 temp_cast_44 = (GRAB_SCREEN_DEPTH73_g13491).xxxx;
			float4 GRAB_SCREEN_DEPTH310_g38221 = temp_cast_44;
			float4 temp_cast_45 = (0.4125228).xxxx;
			float4 temp_cast_46 = (GRAB_SCREEN_CLOSENESS83_g13491).xxxx;
			float4 GRAB_SCREEN_CLOSENESS312_g38221 = temp_cast_46;
			float4 lerpResult769_g38221 = lerp( ( ( float4( (_FoamShoreline_Tint).rgb , 0.0 ) * localfloat4switch278_g38221 * _FoamShoreline_TintStrength ) * GRAB_SCREEN_DEPTH_BEHIND314_g38221 ) , float4( 0,0,0,0 ) , saturate( ( ( ( ( unityObjectToViewPos731_g38221.z + GRAB_SCREEN_DEPTH310_g38221 ) - temp_cast_45 ) * GRAB_SCREEN_CLOSENESS312_g38221 ) / ( ( _FoamShoreline_Distance - 0.4125228 ) * GRAB_SCREEN_CLOSENESS312_g38221 ) ) ));
			float4 lerpResult761_g38221 = lerp( float4( 0,0,0,0 ) , lerpResult769_g38221 , FlowStrength1182_g38221);
			float4 temp_output_8_0_g38225 = ( _FoamShoreline_NormalStrength * lerpResult761_g38221 );
			float4 break18_g38225 = ( sign( temp_output_14_0_g38225 ) * ( ( ddx( temp_output_8_0_g38225 ) * float4( temp_output_15_0_g38225 , 0.0 ) ) + ( ddy( temp_output_8_0_g38225 ) * float4( cross( ase_worldNormal , temp_output_6_0_g38225 ) , 0.0 ) ) ) );
			float3 appendResult7_g38225 = (float3(break18_g38225.x , -break18_g38225.y , break18_g38225.z));
			float3 worldToTangentDir5_g38225 = ASESafeNormalize( mul( ase_worldToTangent, ( ( temp_output_14_0_g38225 * ase_worldNormal ) - appendResult7_g38225 )) );
			float3 temp_output_1222_32_g38221 = worldToTangentDir5_g38225;
			float3 m_Swirling1223_g38221 = temp_output_1222_32_g38221;
			float3 m_FlowMap1223_g38221 = temp_output_1222_32_g38221;
			float3 localfloat3switch1223_g38221 = float3switch1223_g38221( m_switch1223_g38221 , m_Off1223_g38221 , m_Swirling1223_g38221 , m_FlowMap1223_g38221 );
			float3 FOAM_NORMALShorline1208_g13491 = localfloat3switch1223_g38221;
			float3 temp_output_1762_0_g13491 = BlendNormals( BlendNormals( BlendNormals( weightedBlend1752_g13491 , FOAM_VERTICAL_OFFSHORE_NORMAL1192_g13491 ) , FOAM_HORIZONTAL_OFFSHORE_NORMAL1564_g13491 ) , FOAM_NORMALShorline1208_g13491 );
			o.Normal = temp_output_1762_0_g13491;
			int m_switch1422_g13491 = _SMOOTHNESS_ReduceHorizon;
			int m_switch61_g38229 = _Reflection_Mode;
			float screenDepth2_g13491 = LinearEyeDepth(SAMPLE_DEPTH_TEXTURE( _CameraDepthTexture, ase_screenPosNorm.xy ));
			float distanceDepth2_g13491 = abs( ( screenDepth2_g13491 - LinearEyeDepth( ase_screenPosNorm.z ) ) / ( _ShorelineDepth ) );
			float4 lerpResult25_g13491 = lerp( _ShorelineTint , _MidwaterTint , saturate( (distanceDepth2_g13491*1.0 + _ShorelineOffset) ));
			float4 lerpResult27_g13491 = lerp( _DepthTint , lerpResult25_g13491 , saturate( (distanceDepth2_g13491*-1.0 + _DepthOffset) ));
			float4 COLOR_TINT161_g13491 = lerpResult27_g13491;
			float REFACTED_SCALE_FLOAT78_g38205 = _RefractionScale;
			float3 NORMAL_IN84_g38205 = ( weightedBlend1752_g13491 * 10.0 );
			float3 tangentSpaceNormal55_g38205 = ( REFACTED_SCALE_FLOAT78_g38205 * NORMAL_IN84_g38205 );
			float4 screenPos55_g38205 = ase_screenPos;
			float2 uv55_g38205 = _CameraDepthTexture_TexelSize.xy;
			float localGetRefractedDepth55_g38205 = GetRefractedDepth55_g38205( tangentSpaceNormal55_g38205 , screenPos55_g38205 , uv55_g38205 );
			float2 uv61_g38205 = uv55_g38205;
			float2 localAlignWithGrabTexel61_g38205 = AlignWithGrabTexel( uv61_g38205 );
			float4 screenColor53_g38205 = UNITY_SAMPLE_SCREENSPACE_TEXTURE(_GrabTexture,localAlignWithGrabTexel61_g38205);
			float4 REFRACTED_DEPTH144_g13491 = screenColor53_g38205;
			float temp_output_20_0_g13491 = ( i.vertexColor.a * ( 1.0 - _Opacity ) );
			#ifdef UNITY_PASS_FORWARDADD
				float staticSwitch37_g13491 = 0.0;
			#else
				float staticSwitch37_g13491 = ( 1.0 - ( ( 1.0 - saturate( (distanceDepth2_g13491*-5.0 + _OpacityShoreline) ) ) * temp_output_20_0_g13491 ) );
			#endif
			float DEPTH_TINT_ALPHA93_g13491 = staticSwitch37_g13491;
			float4 lerpResult105_g13491 = lerp( COLOR_TINT161_g13491 , REFRACTED_DEPTH144_g13491 , DEPTH_TINT_ALPHA93_g13491);
			float4 FOAM_VERTICAL_OFFSHORE655_g13491 = temp_output_1189_0_g38207;
			float4 FOAM_HORIZONTAL_OFFSHORE1565_g13491 = temp_output_1188_0_g38214;
			float4 FOAM_SHORELINE654_g13491 = lerpResult761_g38221;
			float4 temp_output_1492_0_g13491 = ( ( ( lerpResult105_g13491 + FOAM_VERTICAL_OFFSHORE655_g13491 ) + FOAM_HORIZONTAL_OFFSHORE1565_g13491 ) + FOAM_SHORELINE654_g13491 );
			float4 ALBEDO_IN60_g38229 = temp_output_1492_0_g13491;
			float4 m_Off61_g38229 = ALBEDO_IN60_g38229;
			int m_switch91_g38229 = _Reflection_FresnelMode;
			float3 NORMAL_OUT_Z505_g13491 = weightedBlend1752_g13491;
			float3 temp_output_53_0_g38229 = NORMAL_OUT_Z505_g13491;
			float3 NORMAL_IN106_g38229 = temp_output_53_0_g38229;
			float2 temp_cast_54 = (-_Reflection_BumpClamp).xx;
			float2 temp_cast_55 = (_Reflection_BumpClamp).xx;
			float2 clampResult29_g38229 = clamp( ( (( NORMAL_IN106_g38229 * 50.0 )).xy * _Reflection_BumpScale ) , temp_cast_54 , temp_cast_55 );
			float2 REFLECTION_BUMP9_g38229 = clampResult29_g38229;
			float4 appendResult103_g38229 = (float4(1.0 , 0.0 , 1.0 , temp_output_53_0_g38229.x));
			float3 NORMAL_IN_Z54_g38229 = UnpackScaleNormal( appendResult103_g38229, 0.15 );
			float REFLECTION_WOBBLE13_g38229 = _Reflection_Wobble;
			float4 texCUBENode31_g38229 = SAMPLE_TEXTURECUBE_LOD( _Reflection_Cubemap, sampler_trilinear_repeat, ( float3( REFLECTION_BUMP9_g38229 ,  0.0 ) + WorldReflectionVector( i , NORMAL_IN_Z54_g38229 ) + REFLECTION_WOBBLE13_g38229 ), ( 1.0 - _Reflection_Smoothness ) );
			float4 temp_cast_57 = (texCUBENode31_g38229.r).xxxx;
			float REFLECTION_CLOUD12_g38229 = _Reflection_Cloud;
			float4 lerpResult49_g38229 = lerp( texCUBENode31_g38229 , temp_cast_57 , REFLECTION_CLOUD12_g38229);
			float4 m_Off91_g38229 = lerpResult49_g38229;
			float3 ase_worldViewDir = Unity_SafeNormalize( UnityWorldSpaceViewDir( ase_worldPos ) );
			float fresnelNdotV23_g38229 = dot( ase_worldNormal, ase_worldViewDir );
			float fresnelNode23_g38229 = ( _Reflection_FresnelBias + _Reflection_FresnelScale * pow( max( 1.0 - fresnelNdotV23_g38229 , 0.0001 ), 5.0 ) );
			float REFLECTION_FRESNEL11_g38229 = ( _Reflection_FresnelStrength * fresnelNode23_g38229 );
			float4 lerpResult73_g38229 = lerp( float4( 0,0,0,0 ) , lerpResult49_g38229 , REFLECTION_FRESNEL11_g38229);
			float4 m_Active91_g38229 = lerpResult73_g38229;
			float4 localfloat4switch91_g38229 = float4switch91_g38229( m_switch91_g38229 , m_Off91_g38229 , m_Active91_g38229 );
			float4 switchResult85_g38229 = (((i.ASEVFace>0)?(localfloat4switch91_g38229):(float4( 0,0,0,0 ))));
			float4 temp_cast_60 = (0.0).xxxx;
			#ifdef UNITY_PASS_FORWARDADD
				float4 staticSwitch95_g38229 = temp_cast_60;
			#else
				float4 staticSwitch95_g38229 = ( ( ( 1.0 - 0.5 ) * switchResult85_g38229 ) + ( ALBEDO_IN60_g38229 * 0.5 ) );
			#endif
			float4 m_Active61_g38229 = staticSwitch95_g38229;
			float4 localfloat4switch61_g38229 = float4switch61_g38229( m_switch61_g38229 , m_Off61_g38229 , m_Active61_g38229 );
			float4 m_Off1422_g13491 = localfloat4switch61_g38229;
			float3 specColor1411_g13491 = COLOR_TINT161_g13491.rgb;
			float3 grazingTerm1411_g13491 = float3( 0,0,0 );
			float dotResult1398_g13491 = dot( ase_worldViewDir , ase_worldNormal );
			float3 temp_cast_62 = (dotResult1398_g13491).xxx;
			float3 nv1411_g13491 = temp_cast_62;
			float3 localCallFresnelLerpFast1411_g13491 = CallFresnelLerpFast( specColor1411_g13491 , grazingTerm1411_g13491 , nv1411_g13491 );
			float OPACITY115_g13491 = temp_output_20_0_g13491;
			float4 m_Active1422_g13491 = ( localfloat4switch61_g38229 * float4( max( float3( 0,0,0 ) , ( 1.0 - ( localCallFresnelLerpFast1411_g13491 * OPACITY115_g13491 ) ) ) , 0.0 ) );
			float4 localfloat4switch1422_g13491 = float4switch1422_g13491( m_switch1422_g13491 , m_Off1422_g13491 , m_Active1422_g13491 );
			o.Albedo = localfloat4switch1422_g13491.xyz;
			int temp_output_43_0_g38184 = _Specular_Mode;
			int m_switch18_g38184 = temp_output_43_0_g38184;
			float3 m_Off18_g38184 = float3( 0,0,0 );
			float3 normalizeResult20_g38184 = normalize( (WorldNormalVector( i , temp_output_1762_0_g13491 )) );
			#if defined(LIGHTMAP_ON) && UNITY_VERSION < 560 //aseld
			float3 ase_worldlightDir = 0;
			#else //aseld
			float3 ase_worldlightDir = Unity_SafeNormalize( UnityWorldSpaceLightDir( ase_worldPos ) );
			#endif //aseld
			float3 normalizeResult27_g38184 = normalize( ( ase_worldViewDir + ase_worldlightDir ) );
			float dotResult19_g38184 = dot( normalizeResult20_g38184 , normalizeResult27_g38184 );
			float temp_output_48_0_g38184 = _SpecularWrap;
			float temp_output_46_0_g38184 = (dotResult19_g38184*temp_output_48_0_g38184 + temp_output_48_0_g38184);
			float saferPower25_g38184 = max( ( temp_output_46_0_g38184 * temp_output_46_0_g38184 * temp_output_46_0_g38184 ) , 0.0001 );
			int _SPECULAR_Mode22_g38184 = temp_output_43_0_g38184;
			int m_switch31_g38184 = _SPECULAR_Mode22_g38184;
			float3 m_Off31_g38184 = float3( 0,0,0 );
			float3 temp_output_16_0_g38184 = (_SpecularColor).rgb;
			float3 m_Active31_g38184 = temp_output_16_0_g38184;
			float3 clampResult5_g38184 = clamp( temp_output_16_0_g38184 , float3( 0,0,0 ) , float3( 1,1,1 ) );
			float3 m_ActiveClamp31_g38184 = clampResult5_g38184;
			float3 localfloat3switch31_g38184 = float3switch31_g38184( m_switch31_g38184 , m_Off31_g38184 , m_Active31_g38184 , m_ActiveClamp31_g38184 );
			int m_switch11_g38184 = _SPECULAR_Mode22_g38184;
			float3 m_Off11_g38184 = float3( 0,0,0 );
			#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
			float4 ase_lightColor = 0;
			#else //aselc
			float4 ase_lightColor = _LightColor0;
			#endif //aselc
			float3 temp_output_12_0_g38184 = ( ase_lightColor.rgb * ase_lightColor.a );
			float3 m_Active11_g38184 = temp_output_12_0_g38184;
			float3 clampResult9_g38184 = clamp( temp_output_12_0_g38184 , float3( 0,0,0 ) , float3( 1,1,1 ) );
			float3 m_ActiveClamp11_g38184 = clampResult9_g38184;
			float3 localfloat3switch11_g38184 = float3switch11_g38184( m_switch11_g38184 , m_Off11_g38184 , m_Active11_g38184 , m_ActiveClamp11_g38184 );
			float3 temp_output_24_0_g38184 = saturate( ( pow( saferPower25_g38184 , ( 1.0 - _Shininess ) ) * saturate( ( localfloat3switch31_g38184 * localfloat3switch11_g38184 ) ) ) );
			float3 m_Active18_g38184 = temp_output_24_0_g38184;
			float3 m_ActiveClamp18_g38184 = temp_output_24_0_g38184;
			float3 localfloat3switch18_g38184 = float3switch18_g38184( m_switch18_g38184 , m_Off18_g38184 , m_Active18_g38184 , m_ActiveClamp18_g38184 );
			o.Specular = localfloat3switch18_g38184;
			float temp_output_1454_0_g13491 = ( _SMOOTHNESS_Strength * _SMOOTHNESS_Strength );
			float3 temp_cast_65 = (temp_output_1454_0_g13491).xxx;
			float3 newWorldNormal1601_g13491 = (WorldNormalVector( i , NORMAL_OUT_Z505_g13491 ));
			float fresnelNdotV1412_g13491 = dot( newWorldNormal1601_g13491, ase_worldlightDir );
			float fresnelNode1412_g13491 = ( _SMOOTHNESS_FresnelBias + _SMOOTHNESS_FresnelScale * pow( max( 1.0 - fresnelNdotV1412_g13491 , 0.0001 ), _SMOOTHNESS_FresnelPower ) );
			float3 lerpResult1403_g13491 = lerp( temp_cast_65 , ( temp_output_1454_0_g13491 * newWorldNormal1601_g13491 ) , ( fresnelNode1412_g13491 * ( 1.0 - fresnelNode1412_g13491 ) ));
			float3 clampResult1850_g13491 = clamp( lerpResult1403_g13491 , float3( 0,0,0 ) , float3( 1,1,1 ) );
			o.Smoothness = clampResult1850_g13491.x;
			o.Alpha = 1;
		}

		ENDCG
	}
	Fallback "Diffuse"
}
/*ASEBEGIN
Version=18913
486;116;1467;857;1539.194;3787.057;1.887265;True;False
Node;AmplifyShaderEditor.CommentaryNode;844;260.208,-3070.666;Inherit;False;354.5028;189.4201;DEBUG SETTINGS ;3;700;698;904;;0,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;843;261.0305,-3196.07;Inherit;False;180;121;GLOBAL SETTINGS ;1;207;;0,0,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1077;261.3054,-2452.301;Inherit;False;330;121.5;DESF Common ASE Compile Shaders;1;1078;;0,0.2605708,1,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;904;276.0546,-2954.022;Inherit;False;Constant;_MaskClipValue3;Mask Clip Value;64;1;[HideInInspector];Create;True;1;;0;0;True;0;False;0.5;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;698;275.3818,-3030.394;Inherit;False;Property;_ColorMask;Color Mask Mode;1;1;[Enum];Create;False;1;;0;1;None,0,Alpha,1,Red,8,Green,4,Blue,2,RGB,14,RGBA,15;True;0;False;15;15;False;0;1;INT;0
Node;AmplifyShaderEditor.IntNode;207;276.0131,-3156.746;Float;False;Property;_CullMode;Cull Mode;2;2;[Header];[Enum];Create;True;1;GLOBAL SETTINGS;0;1;UnityEngine.Rendering.CullMode;True;0;False;0;0;False;0;1;INT;0
Node;AmplifyShaderEditor.FunctionNode;1192;-151.2454,-2874.322;Inherit;False;DESF Core Water Standard;3;;13491;5bcca9a847eb4f840b9e9e65831f8ab2;8,169,1,212,1,440,0,438,0,1081,0,310,0,1078,0,1079,0;0;7;FLOAT4;0;FLOAT3;123;FLOAT3;1651;FLOAT3;122;FLOAT;419;FLOAT;417;FLOAT;1080
Node;AmplifyShaderEditor.FunctionNode;1078;273.3054,-2412.301;Inherit;False;DESF Common ASE Compile Shaders;-1;;38262;b85b01c42ba8a8a448b731b68fc0dbd9;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.IntNode;700;461.1788,-3027.381;Inherit;False;Property;_ZWriteMode;ZWrite Mode;0;2;[Header];[Enum];Create;False;1;DEBUG SETTINGS;0;1;Off,0,On,1;True;0;False;1;1;False;0;1;INT;0
Node;AmplifyShaderEditor.StandardSurfaceOutputNode;0;261.1309,-2869.459;Float;False;True;-1;6;;200;0;StandardSpecular;DEC/Water/Water Lake Simple;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;True;False;True;True;True;False;Back;0;True;700;3;False;697;False;0;False;-1;0;False;-1;False;0;Custom;0.5;True;False;-2;True;Opaque;;Transparent;All;18;all;True;True;True;True;0;True;698;False;0;False;-1;255;False;-1;255;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;-1;False;2;18;10;25;False;0.5;True;2;5;False;-1;10;False;-1;0;0;False;-1;0;False;-1;0;False;-1;0;False;-1;0;False;0;0,0,0,0;VertexOffset;True;False;Cylindrical;False;Relative;200;;-1;-1;-1;-1;0;False;0;0;True;207;-1;0;True;904;0;1;;0;False;0.1;False;-1;0;False;894;True;16;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT;0;False;9;FLOAT;0;False;10;FLOAT;0;False;13;FLOAT3;0,0,0;False;11;FLOAT3;0,0,0;False;12;FLOAT3;0,0,0;False;14;FLOAT4;0,0,0,0;False;15;FLOAT3;0,0,0;False;0
WireConnection;0;0;1192;0
WireConnection;0;1;1192;123
WireConnection;0;3;1192;1651
WireConnection;0;4;1192;122
ASEEND*/
//CHKSM=D8991D62EC38385B26D7176C1CC190F4C10A427C