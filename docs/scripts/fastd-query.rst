Query FASTD Status
==================

.. code-block:: sh

  Usage: fastd-query OBJECT { COMMAND | help }
  where OBJECT     := { STATISTICS | connections | PEERS }
        STATISTICS := statistics JQ-STRING
        PEERS      := peers [ name | mac ] JQ-STRING

Since fastd v16 there is support for a status socket, which provides
information about known peers and their connections and statistics about
the running vpn service. Information is provided in json format.

The fastd-query script provides everyday search primitives and allows to extend
them by providing additional ``jq`` queries, helping you to find the needle in
the peerstack.

You need to define the socket which should be used for information gathering via
the environment variable ``FASTD_SOCKET``. 

For every ``ffnord::mesh`` resource on the host there is created a ``fastd-query-${mesh_code}``
alias which already includes the ``FASTD_SOCKET`` variable for easy access.
