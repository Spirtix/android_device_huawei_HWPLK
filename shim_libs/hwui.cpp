/*
 * Copyright (C) 2016 The CyanogenMod Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

#include <string>

extern "C" void _ZN7android10uirenderer12ProgramCache14generateShaderERKNS0_18ProgramDescriptionERNS_7String8ES6_(uint32_t Format, int Usage , const std::string *) { }

extern "C" void _ZN7android10uirenderer12ProgramCacheC1ERNS0_10ExtensionsE(uint32_t Format, int Usage , const std::string *) { }

extern "C" void _ZN7android10uirenderer10ExtensionsC1Ev(uint32_t Format, int Usage , const std::string *) { }

extern "C" void _ZN7android10uirenderer12ProgramCacheD1Ev(uint32_t Format, int Usage , const std::string *) { }

extern "C" {
    void _ZN7android13GraphicBufferC1EjjijNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(
            void *(pthis), uint32_t inWidth, uint32_t inHeight, int inFormat,
            uint32_t inUsage, std::string requestorName);

    void _ZN7android13GraphicBufferC1Ejjij(void *(pthis), uint32_t inWidth, uint32_t inHeight, int inFormat, uint32_t inUsage) {
        _ZN7android13GraphicBufferC1EjjijNSt3__112basic_stringIcNS1_11char_traitsIcEENS1_9allocatorIcEEEE(
            pthis, inWidth, inHeight, inFormat, inUsage, "<Unknown>");
    }

}