% FT_PREAMBLE_TRACKCONFIG is a helper script that calls ft_checkconfig to switch the
% (optional) configuration tracking on. This should be used together with
% FT_POSTAMBLE_TRACKCONFIG.
%
% Use as
%   ft_preamble trackconfig
%   ... regular code goes here ...
%   ft_postamble trackconfig
%
% See also FT_POSTAMBLE_TRACKCONFIG

% Copyright (C) 2011-2012, Robert Oostenveld, DCCN
%
% This file is part of FieldTrip, see http://www.ru.nl/neuroimaging/fieldtrip
% for the documentation and details.
%
%    FieldTrip is free software: you can redistribute it and/or modify
%    it under the terms of the GNU General Public License as published by
%    the Free Software Foundation, either version 3 of the License, or
%    (at your option) any later version.
%
%    FieldTrip is distributed in the hope that it will be useful,
%    but WITHOUT ANY WARRANTY; without even the implied warranty of
%    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
%    GNU General Public License for more details.
%
%    You should have received a copy of the GNU General Public License
%    along with FieldTrip. If not, see <http://www.gnu.org/licenses/>.
%
% $Id: ft_preamble_trackconfig.m 9561 2014-05-21 06:50:39Z roboos $

% otherwise the empty field would end up in the output cfg
global ft_default
ft_default = rmfield(ft_default, 'preamble');

% most fieldtrip functions should allow for configuration tracking, except for
% the functions that take a cfg as input and return a cfg as output
cfg = ft_checkconfig(cfg, 'trackconfig', 'on');

% the calling ft_preable expects it to be present
ft_default.preamble = {};
