// SPDX-FileCopyrightText: 2022 Efabless Corporation
//
// Licensed under the Apache License, Version 2.0 (the "License");
// you may not use this file except in compliance with the License.
// You may obtain a copy of the License at
//
//      http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing, software
// distributed under the License is distributed on an "AS IS" BASIS,
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
// See the License for the specific language governing permissions and
// limitations under the License.
// SPDX-License-Identifier: Apache-2.0

`default_nettype none

`ifndef __USER_DEFINES_H
// User GPIO initial configuration parameters
`define __USER_DEFINES_H

// deliberately erroneous placeholder value; user required to config GPIO's to other
`define GPIO_MODE_INVALID                  13'hXXXX

// Authoritive source of these MODE defs is: caravel/verilog/rtl/user_defines.v
// Useful GPIO mode values.  These match the names used in defs.h.
//
`define GPIO_MODE_MGMT_STD_INPUT_NOPULL    13'h0403
`define GPIO_MODE_MGMT_STD_INPUT_PULLDOWN  13'h0c01
`define GPIO_MODE_MGMT_STD_INPUT_PULLUP    13'h0801
`define GPIO_MODE_MGMT_STD_OUTPUT          13'h1809
`define GPIO_MODE_MGMT_STD_BIDIRECTIONAL   13'h1801
`define GPIO_MODE_MGMT_STD_ANALOG          13'h000b

`define GPIO_MODE_USER_STD_INPUT_NOPULL    13'h0402
`define GPIO_MODE_USER_STD_INPUT_PULLDOWN  13'h0c00
`define GPIO_MODE_USER_STD_INPUT_PULLUP    13'h0800
`define GPIO_MODE_USER_STD_OUTPUT          13'h1808
`define GPIO_MODE_USER_STD_BIDIRECTIONAL   13'h1800
`define GPIO_MODE_USER_STD_OUT_MONITORED   13'h1802
`define GPIO_MODE_USER_STD_ANALOG          13'h000a

// The power-on configuration for GPIO 0 to 4 is fixed and cannot be
// modified (allowing the SPI and debug to always be accessible unless
// overridden by a flash program).

// The values below can be any of the standard types defined above,
// or they can be any 13-bit value if the user wants a non-standard
// startup state for the GPIO.  By default, every GPIO from 5 to 37
// is set to power up as an input controlled by the management SoC.
// Users may want to redefine these so that the user project powers
// up in a state that can be used immediately without depending on
// the management SoC to run a startup program to configure the GPIOs.

`define USER_CONFIG_GPIO_5_INIT  `GPIO_MODE_USER_STD_OUTPUT       // GPIO 5 as user output
`define USER_CONFIG_GPIO_6_INIT  `GPIO_MODE_USER_STD_OUTPUT       // GPIO 6 as user output
`define USER_CONFIG_GPIO_7_INIT  `GPIO_MODE_USER_STD_OUTPUT       // GPIO 7 as user output
`define USER_CONFIG_GPIO_8_INIT  `GPIO_MODE_USER_STD_OUTPUT       // GPIO 8 as user output
`define USER_CONFIG_GPIO_9_INIT  `GPIO_MODE_USER_STD_OUTPUT       // GPIO 9 as user output

`define USER_CONFIG_GPIO_10_INIT `GPIO_MODE_USER_STD_INPUT_NOPULL // GPIO 10 as user input (no pull-up/pull-down)
`define USER_CONFIG_GPIO_11_INIT `GPIO_MODE_USER_STD_INPUT_NOPULL // GPIO 11 as user input (no pull-up/pull-down)
`define USER_CONFIG_GPIO_12_INIT `GPIO_MODE_USER_STD_INPUT_NOPULL // GPIO 12 as user input (no pull-up/pull-down)
`define USER_CONFIG_GPIO_13_INIT `GPIO_MODE_USER_STD_INPUT_NOPULL // GPIO 13 as user input (no pull-up/pull-down)

// Configurations of GPIO 14 to 24 are used on caravel but not caravan.
`define USER_CONFIG_GPIO_14_INIT `GPIO_MODE_USER_STD_INPUT_PULLUP // GPIO 14 as user input (with pull-up)
`define USER_CONFIG_GPIO_15_INIT `GPIO_MODE_USER_STD_INPUT_PULLUP // GPIO 15 as user input (with pull-up)
`define USER_CONFIG_GPIO_16_INIT `GPIO_MODE_USER_STD_INPUT_PULLUP // GPIO 16 as user input (with pull-up)
`define USER_CONFIG_GPIO_17_INIT `GPIO_MODE_USER_STD_INPUT_PULLUP // GPIO 17 as user input (with pull-up)
`define USER_CONFIG_GPIO_18_INIT `GPIO_MODE_USER_STD_INPUT_PULLUP // GPIO 18 as user input (with pull-up)
`define USER_CONFIG_GPIO_19_INIT `GPIO_MODE_USER_STD_INPUT_PULLUP // GPIO 19 as user input (with pull-up)
`define USER_CONFIG_GPIO_20_INIT `GPIO_MODE_USER_STD_INPUT_PULLUP // GPIO 20 as user input (with pull-up)
`define USER_CONFIG_GPIO_21_INIT `GPIO_MODE_USER_STD_INPUT_PULLUP // GPIO 21 as user input (with pull-up)
`define USER_CONFIG_GPIO_22_INIT `GPIO_MODE_USER_STD_INPUT_PULLUP // GPIO 22 as user input (with pull-up)
`define USER_CONFIG_GPIO_23_INIT `GPIO_MODE_USER_STD_INPUT_PULLUP // GPIO 23 as user input (with pull-up)
`define USER_CONFIG_GPIO_24_INIT `GPIO_MODE_USER_STD_INPUT_PULLUP // GPIO 24 as user input (with pull-up)

`define USER_CONFIG_GPIO_25_INIT `GPIO_MODE_USER_STD_BIDIRECTIONAL // GPIO 25 as bidirectional
`define USER_CONFIG_GPIO_26_INIT `GPIO_MODE_USER_STD_BIDIRECTIONAL // GPIO 26 as bidirectional
`define USER_CONFIG_GPIO_27_INIT `GPIO_MODE_USER_STD_BIDIRECTIONAL // GPIO 27 as bidirectional
`define USER_CONFIG_GPIO_28_INIT `GPIO_MODE_USER_STD_BIDIRECTIONAL // GPIO 28 as bidirectional
`define USER_CONFIG_GPIO_29_INIT `GPIO_MODE_USER_STD_BIDIRECTIONAL // GPIO 29 as bidirectional
`define USER_CONFIG_GPIO_30_INIT `GPIO_MODE_USER_STD_BIDIRECTIONAL // GPIO 30 as bidirectional
`define USER_CONFIG_GPIO_31_INIT `GPIO_MODE_USER_STD_BIDIRECTIONAL // GPIO 31 as bidirectional
`define USER_CONFIG_GPIO_32_INIT `GPIO_MODE_USER_STD_BIDIRECTIONAL // GPIO 32 as bidirectional
`define USER_CONFIG_GPIO_33_INIT `GPIO_MODE_USER_STD_BIDIRECTIONAL // GPIO 33 as bidirectional
`define USER_CONFIG_GPIO_34_INIT `GPIO_MODE_USER_STD_BIDIRECTIONAL // GPIO 34 as bidirectional
`define USER_CONFIG_GPIO_35_INIT `GPIO_MODE_USER_STD_BIDIRECTIONAL // GPIO 35 as bidirectional
`define USER_CONFIG_GPIO_36_INIT `GPIO_MODE_USER_STD_BIDIRECTIONAL // GPIO 36 as bidirectional
`define USER_CONFIG_GPIO_37_INIT `GPIO_MODE_USER_STD_BIDIRECTIONAL // GPIO 37 as bidirectional

`endif // __USER_DEFINES_H
