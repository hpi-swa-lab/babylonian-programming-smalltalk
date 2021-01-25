building
canDeserialize

	^ (self ast body statements at: 1) selector = #should:raise: