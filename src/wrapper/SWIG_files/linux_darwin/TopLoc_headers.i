/*

Copyright 2008-2011 Thomas Paviot (tpaviot@gmail.com)

This file is part of pythonOCC.

pythonOCC is free software: you can redistribute it and/or modify
it under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

pythonOCC is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU Lesser General Public License for more details.

You should have received a copy of the GNU Lesser General Public License
along with pythonOCC.  If not, see <http://www.gnu.org/licenses/>.

$Revision$
$Date$
$Author$
$HeaderURL$

*/
%{

// Headers necessary to define wrapped classes.

#include<Handle_TopLoc_Datum3D.hxx>
#include<Handle_TopLoc_IndexedMapNodeOfIndexedMapOfLocation.hxx>
#include<Handle_TopLoc_SListNodeOfSListOfItemLocation.hxx>
#include<Handle_TopLoc_StdMapNodeOfMapOfLocation.hxx>
#include<TopLoc_Datum3D.hxx>
#include<TopLoc_IndexedMapNodeOfIndexedMapOfLocation.hxx>
#include<TopLoc_IndexedMapOfLocation.hxx>
#include<TopLoc_ItemLocation.hxx>
#include<TopLoc_Location.hxx>
#include<TopLoc_MapIteratorOfMapOfLocation.hxx>
#include<TopLoc_MapLocationHasher.hxx>
#include<TopLoc_MapOfLocation.hxx>
#include<TopLoc_SListNodeOfSListOfItemLocation.hxx>
#include<TopLoc_SListOfItemLocation.hxx>
#include<TopLoc_StdMapNodeOfMapOfLocation.hxx>
#include<TopLoc_TrsfPtr.hxx>

// Additional headers necessary for compilation.


// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<gp_Trsf.hxx>
%}
