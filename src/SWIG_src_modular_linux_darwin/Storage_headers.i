/*
##Copyright 2008-2009 Thomas Paviot
##
##thomas.paviot@free.fr
##
##pythonOCC is a computer program whose purpose is to provide a complete set
##of python bindings for OpenCascade library.
##
##This software is governed by the CeCILL license under French law and
##abiding by the rules of distribution of free software.  You can  use, 
##modify and/ or redistribute the software under the terms of the CeCILL
##license as circulated by CEA, CNRS and INRIA at the following URL
##"http://www.cecill.info". 
##
##As a counterpart to the access to the source code and  rights to copy,
##modify and redistribute granted by the license, users are provided only
##with a limited warranty  and the software's author,  the holder of the
##economic rights,  and the successive licensors  have only  limited
##liability. 
##
##In this respect, the user's attention is drawn to the risks associated
##with loading,  using,  modifying and/or developing or reproducing the
##software by the user in light of its specific status of free software,
##that may mean  that it is complicated to manipulate,  and  that  also
##therefore means  that it is reserved for developers  and  experienced
##professionals having in-depth computer knowledge. Users are therefore
##encouraged to load and test the software's suitability as regards their
##requirements in conditions enabling the security of their systems and/or 
##data to be ensured and,  more generally, to use and operate it in the 
##same conditions as regards security. 
##
##The fact that you are presently reading this means that you have had
##knowledge of the CeCILL license and that you accept its terms.
*/
%{

// Headers necessary to define wrapped classes.

#include<Storage_DataMapNodeOfMapOfPers.hxx>
#include<Storage_stCONSTclCOM.hxx>
#include<Storage_SequenceNodeOfSeqOfRoot.hxx>
#include<Storage_StreamFormatError.hxx>
#include<Storage_HPArray.hxx>
#include<Storage_PType.hxx>
#include<Storage_StreamWriteError.hxx>
#include<Storage_OpenMode.hxx>
#include<Storage_BucketOfPersistent.hxx>
#include<Storage_SequenceNodeOfSeqOfCallBack.hxx>
#include<Storage_TypeData.hxx>
#include<Storage_HeaderData.hxx>
#include<Storage_StreamExtCharParityError.hxx>
#include<Storage_Position.hxx>
#include<Storage_HSeqOfPersistent.hxx>
#include<Storage_StreamModeError.hxx>
#include<Storage_Macros.hxx>
#include<Storage_MapOfAsciiString.hxx>
#include<Storage_BaseDriver.hxx>
#include<Storage_Data.hxx>
#include<Storage_StreamTypeMismatchError.hxx>
#include<Storage_RootData.hxx>
#include<Storage_HArrayOfSchema.hxx>
#include<Storage_StreamUnknownTypeError.hxx>
#include<Storage_IndexedDataMapNodeOfPType.hxx>
#include<Storage_Error.hxx>
#include<Storage_Schema.hxx>
#include<Storage_MapOfCallBack.hxx>
#include<Storage_MapOfPers.hxx>
#include<Storage_StreamReadError.hxx>
#include<Storage_StdMapNodeOfMapOfAsciiString.hxx>
#include<Storage_MapPSDHasher.hxx>
#include<Storage_DataMapNodeOfMapOfCallBack.hxx>
#include<Storage_ArrayOfCallBack.hxx>
#include<Storage_SolveMode.hxx>
#include<Storage_MapIteratorOfMapOfAsciiString.hxx>
#include<Storage_SeqOfPersistent.hxx>
#include<Storage_Root.hxx>
#include<Storage_SeqOfRoot.hxx>
#include<Storage_HSeqOfCallBack.hxx>
#include<Storage_DefaultCallBack.hxx>
#include<Storage_Container.hxx>
#include<Storage_DataMapIteratorOfMapOfCallBack.hxx>
#include<Storage_HSeqOfRoot.hxx>
#include<Storage_TypedCallBack.hxx>
#include<Storage_ArrayOfSchema.hxx>
#include<Storage_CallBack.hxx>
#include<Storage_InternalData.hxx>
#include<Storage_DataMapIteratorOfMapOfPers.hxx>
#include<Storage_HArrayOfCallBack.hxx>
#include<Storage_SequenceNodeOfSeqOfPersistent.hxx>
#include<Storage_PArray.hxx>
#include<Storage_SeqOfCallBack.hxx>
#include<Storage.hxx>
#include<Handle_Storage_Schema.hxx>
#include<Handle_Storage_StreamFormatError.hxx>
#include<Handle_Storage_Data.hxx>
#include<Handle_Storage_SequenceNodeOfSeqOfCallBack.hxx>
#include<Handle_Storage_HSeqOfCallBack.hxx>
#include<Handle_Storage_DefaultCallBack.hxx>
#include<Handle_Storage_TypeData.hxx>
#include<Handle_Storage_HArrayOfSchema.hxx>
#include<Handle_Storage_StreamWriteError.hxx>
#include<Handle_Storage_TypedCallBack.hxx>
#include<Handle_Storage_DataMapNodeOfMapOfCallBack.hxx>
#include<Handle_Storage_StreamUnknownTypeError.hxx>
#include<Handle_Storage_HArrayOfCallBack.hxx>
#include<Handle_Storage_HeaderData.hxx>
#include<Handle_Storage_StreamModeError.hxx>
#include<Handle_Storage_StreamExtCharParityError.hxx>
#include<Handle_Storage_Root.hxx>
#include<Handle_Storage_InternalData.hxx>
#include<Handle_Storage_StreamTypeMismatchError.hxx>
#include<Handle_Storage_HPArray.hxx>
#include<Handle_Storage_CallBack.hxx>
#include<Handle_Storage_HSeqOfPersistent.hxx>
#include<Handle_Storage_StdMapNodeOfMapOfAsciiString.hxx>
#include<Handle_Storage_SequenceNodeOfSeqOfPersistent.hxx>
#include<Handle_Storage_IndexedDataMapNodeOfPType.hxx>
#include<Handle_Storage_SequenceNodeOfSeqOfRoot.hxx>
#include<Handle_Storage_DataMapNodeOfMapOfPers.hxx>
#include<Handle_Storage_StreamReadError.hxx>
#include<Handle_Storage_RootData.hxx>
#include<Handle_Storage_HSeqOfRoot.hxx>

// Additional headers necessary for compilation.

#include<Storage_DataMapNodeOfMapOfPers.hxx>
#include<Storage_stCONSTclCOM.hxx>
#include<Storage_SequenceNodeOfSeqOfRoot.hxx>
#include<Storage_StreamFormatError.hxx>
#include<Storage_HPArray.hxx>
#include<Storage_PType.hxx>
#include<Storage_StreamWriteError.hxx>
#include<Storage_OpenMode.hxx>
#include<Storage_BucketOfPersistent.hxx>
#include<Storage_SequenceNodeOfSeqOfCallBack.hxx>
#include<Storage_TypeData.hxx>
#include<Storage_HeaderData.hxx>
#include<Storage_StreamExtCharParityError.hxx>
#include<Storage_Position.hxx>
#include<Storage_HSeqOfPersistent.hxx>
#include<Storage_StreamModeError.hxx>
#include<Storage_Macros.hxx>
#include<Storage_MapOfAsciiString.hxx>
#include<Storage_BaseDriver.hxx>
#include<Storage_Data.hxx>
#include<Storage_StreamTypeMismatchError.hxx>
#include<Storage_RootData.hxx>
#include<Storage_HArrayOfSchema.hxx>
#include<Storage_StreamUnknownTypeError.hxx>
#include<Storage_IndexedDataMapNodeOfPType.hxx>
#include<Storage_Error.hxx>
#include<Storage_Schema.hxx>
#include<Storage_MapOfCallBack.hxx>
#include<Storage_MapOfPers.hxx>
#include<Storage_StreamReadError.hxx>
#include<Storage_StdMapNodeOfMapOfAsciiString.hxx>
#include<Storage_MapPSDHasher.hxx>
#include<Storage_DataMapNodeOfMapOfCallBack.hxx>
#include<Storage_ArrayOfCallBack.hxx>
#include<Storage_SolveMode.hxx>
#include<Storage_MapIteratorOfMapOfAsciiString.hxx>
#include<Storage_SeqOfPersistent.hxx>
#include<Storage_Root.hxx>
#include<Storage_SeqOfRoot.hxx>
#include<Storage_HSeqOfCallBack.hxx>
#include<Storage_DefaultCallBack.hxx>
#include<Storage_Container.hxx>
#include<Storage_DataMapIteratorOfMapOfCallBack.hxx>
#include<Storage_HSeqOfRoot.hxx>
#include<Storage_TypedCallBack.hxx>
#include<Storage.hxx>
#include<Storage_ArrayOfSchema.hxx>
#include<Storage_CallBack.hxx>
#include<Storage_InternalData.hxx>
#include<Storage_DataMapIteratorOfMapOfPers.hxx>
#include<Storage_HArrayOfCallBack.hxx>
#include<Storage_SequenceNodeOfSeqOfPersistent.hxx>
#include<Storage_PArray.hxx>
#include<Storage_SeqOfCallBack.hxx>

// Needed headers necessary for compilation.

#include<Handle_Standard_Transient.hxx>
#include<Handle_Standard_Persistent.hxx>
#include<TCollection_AsciiString.hxx>
#include<Standard_SStream.hxx>
#include<TColStd_SequenceOfAsciiString.hxx>
#include<Handle_TColStd_HSequenceOfAsciiString.hxx>
#include<TCollection_ExtendedString.hxx>
#include<TColStd_SequenceOfExtendedString.hxx>
%}