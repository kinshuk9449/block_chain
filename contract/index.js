/*
 * Copyright IBM Corp. All Rights Reserved.
 *
 * SPDX-License-Identifier: Apache-2.0
 */

'use strict';

const certificateIssuer = require('./lib/certificateIssuer');
const TokenERC721Contract = require('./lib/tokenERC721');

// module.exports.CertificateIssuer = certificateIssuer;
// module.exports.contracts = [certificateIssuer];

module.exports.TokenERC721Contract = TokenERC721Contract;
module.exports.contracts = [TokenERC721Contract];
