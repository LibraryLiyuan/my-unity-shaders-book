Shader "Custom/SimpleVertexFragmentShader"
{
    SubShader
    {
        Pass
        {
            CGPROGRAM

            #pragma vertex vert
            #pragma fragment frag

            #include "UnityCG.cginc"

            float4 vert(float4 v : POSITION) : SV_POSITION
            {
                return mul(unity_MatrixMVP,v);
            }

            fixed4 frag() : SV_Target
            {
                return fixed4(1.0, 1.0, 1.0, 1.0);
            }
            ENDCG
        }
    }
}
